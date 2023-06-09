import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fast_shopping/models/fs_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterRepository {
  RegisterRepository({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;

  final FirebaseAuth _firebaseAuth;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<FSUser?> registerNewUser({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    final UserCredential firebaseCredential = await _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password);

    final User? firebaseUser = firebaseCredential.user;

    if (firebaseUser != null) {
      FSUser user = FSUser(
        uid: firebaseUser.uid,
        email: email,
        firstName: firstName,
        lastName: lastName,
        image: firebaseUser.photoURL,
        products: [],
      );

      await _firestore
          .collection("users")
          .doc(firebaseUser.uid)
          .set(user.toJson());

      return user;
    }
    return null;
  }

  Future<FSUser?> registerNewUserWithUid({
    required String email,
    required String uid,
    required String firstName,
    required String lastName,
  }) async {
    FSUser user = FSUser(
      uid: uid,
      email: email,
      firstName: firstName,
      lastName: lastName,
      image: _firebaseAuth.currentUser?.photoURL,
      products: [],
    );

    await _firestore.collection("users").doc(uid).set(user.toJson());

    return user;
  }
}
