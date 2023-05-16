import 'dart:convert';

import 'package:fast_shopping/models/fs_user.dart';
import 'package:fast_shopping/utils/http_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterRepository {
  const RegisterRepository({
    required FirebaseAuth firebaseAuth,
    required HttpService httpService,
  })  : _firebaseAuth = firebaseAuth,
        _httpService = httpService;

  final FirebaseAuth _firebaseAuth;

  final HttpService _httpService;

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
      );
      final String? request = await _httpService.makeSetRequest(
          name:
              '/user?methodName=updateUser&userData=${jsonEncode(user.toJson())}');
      if (request != null) {
        return FSUser.fromJson(jsonDecode(request));
      }
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
    );
    final String? request = await _httpService.makeSetRequest(
        name:
            '/user?methodName=updateUser&userData=${jsonEncode(user.toJson())}');
    if (request != null) {
      return FSUser.fromJson(jsonDecode(request));
    }
    return null;
  }
}
