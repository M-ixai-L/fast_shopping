// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:fast_shopping/email_password_login/bloc/email_password_login_bloc.dart'
    as _i11;
import 'package:fast_shopping/email_password_login/infrastructure/login_with_email_repository.dart'
    as _i9;
import 'package:fast_shopping/login/application/index.dart' as _i8;
import 'package:fast_shopping/login/infrastructure/auth_repository.dart' as _i3;
import 'package:fast_shopping/reqister/application/bloc/register_bloc.dart'
    as _i12;
import 'package:fast_shopping/reqister/infrastructure/register_repository.dart'
    as _i10;
import 'package:fast_shopping/utils/http_service.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AuthRepository>(() => _i3.AuthRepository(
          google: gh<_i4.GoogleSignIn>(),
          firebaseAuth: gh<_i5.FirebaseAuth>(),
          firebaseFirestore: gh<_i6.FirebaseFirestore>(),
        ));
    gh.factory<_i7.HttpService>(() => _i7.HttpService());
    gh.factory<_i8.LoginBloc>(
        () => _i8.LoginBloc(auth: gh<_i3.AuthRepository>()));
    gh.factory<_i9.LoginWithEmailRepository>(() =>
        _i9.LoginWithEmailRepository(firebaseAuth: gh<_i5.FirebaseAuth>()));
    gh.factory<_i10.RegisterRepository>(() => _i10.RegisterRepository(
          firebaseAuth: gh<_i5.FirebaseAuth>(),
          httpService: gh<_i7.HttpService>(),
        ));
    gh.factory<_i11.EmailPasswordLoginBloc>(() => _i11.EmailPasswordLoginBloc(
        registerRepository: gh<_i9.LoginWithEmailRepository>()));
    gh.factory<_i12.RegisterBloc>(() =>
        _i12.RegisterBloc(registerRepository: gh<_i10.RegisterRepository>()));
    return this;
  }
}
