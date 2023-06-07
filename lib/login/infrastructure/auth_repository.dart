import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fast_shopping/login/application/index.dart';
import 'package:fast_shopping/models/fs_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthRepository {
  const AuthRepository({
    required GoogleSignIn google,
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firebaseFirestore,
  })  : _google = google,
        _firebaseAuth = firebaseAuth,
        _firebaseFirestore = firebaseFirestore;

  final GoogleSignIn _google;
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  Future<AppUser?> signInWithGoogle() async {
    final GoogleSignInAccount? user = await _google.signIn();
    if (user == null) {
      throw UserCanceled();
    }

    final GoogleSignInAuthentication authentication = await user.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: authentication.accessToken,
      idToken: authentication.idToken,
    );
    final UserCredential firebaseUser =
        await _firebaseAuth.signInWithCredential(credential);
    if (firebaseUser.user != null) {
      return AppUser(
        email: user.email,
        uid: firebaseUser.user!.uid,
      );
    }
    return null;
  }

  Future<bool> checkUserInDataBase(String uid) async {
    final doc = await _firebaseFirestore.collection('users').doc(uid).get();
    if (doc.data() != null) {
      return true;
    }
    return false;
  }

  @override
  Stream<User?> currentUserStream() {
    return _firebaseAuth.authStateChanges().map((event) {
      return event;
    });
  }

  Future<FSUser?> getUser() async {
    final User? user = FirebaseAuth.instance.currentUser;

    final doc =
        await _firebaseFirestore.collection('users').doc(user!.uid).get();
    return FSUser.fromJson(doc.data()!);
  }

  Future<void> logout() async {
    await Future.wait(<Future<void>>[
      _google.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }
}

class UserCanceled implements Exception {}
