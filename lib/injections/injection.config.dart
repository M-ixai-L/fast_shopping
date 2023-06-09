// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:fast_shopping/basket/application/bloc/basket_bloc.dart' as _i16;
import 'package:fast_shopping/basket/presentation/basket_screen.dart' as _i7;
import 'package:fast_shopping/catalog/application/bloc/catalog_bloc.dart'
    as _i17;
import 'package:fast_shopping/catalog/infrastructure/product_repository.dart'
    as _i14;
import 'package:fast_shopping/catalog/presentation/catalog_screen.dart' as _i9;
import 'package:fast_shopping/email_password_login/bloc/email_password_login_bloc.dart'
    as _i18;
import 'package:fast_shopping/email_password_login/infrastructure/login_with_email_repository.dart'
    as _i12;
import 'package:fast_shopping/history/application/bloc/history_bloc.dart'
    as _i19;
import 'package:fast_shopping/history/presentation/history_screen.dart' as _i10;
import 'package:fast_shopping/home/application/bloc/home_bloc.dart' as _i20;
import 'package:fast_shopping/login/application/index.dart' as _i11;
import 'package:fast_shopping/login/infrastructure/auth_repository.dart' as _i3;
import 'package:fast_shopping/me/application/bloc/me_bloc.dart' as _i13;
import 'package:fast_shopping/reqister/application/bloc/register_bloc.dart'
    as _i21;
import 'package:fast_shopping/reqister/infrastructure/register_repository.dart'
    as _i15;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:flutter/material.dart' as _i8;
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
    gh.factory<_i7.BasketScreen>(() => _i7.BasketScreen(key: gh<_i8.Key>()));
    gh.factory<_i9.CatalogScreen>(() => _i9.CatalogScreen(key: gh<_i8.Key>()));
    gh.factory<_i10.HistoryScreen>(
        () => _i10.HistoryScreen(key: gh<_i8.Key>()));
    gh.factory<_i11.LoginBloc>(
        () => _i11.LoginBloc(auth: gh<_i3.AuthRepository>()));
    gh.factory<_i12.LoginWithEmailRepository>(() =>
        _i12.LoginWithEmailRepository(firebaseAuth: gh<_i5.FirebaseAuth>()));
    gh.factory<_i13.MeBloc>(
        () => _i13.MeBloc(authRepository: gh<_i3.AuthRepository>()));
    gh.factory<_i14.ProductRepository>(() => _i14.ProductRepository());
    gh.factory<_i15.RegisterRepository>(
        () => _i15.RegisterRepository(firebaseAuth: gh<_i5.FirebaseAuth>()));
    gh.factory<_i16.BasketBloc>(
        () => _i16.BasketBloc(productRepository: gh<_i14.ProductRepository>()));
    gh.factory<_i17.CatalogBloc>(() => _i17.CatalogBloc(
          authRepository: gh<_i3.AuthRepository>(),
          productRepository: gh<_i14.ProductRepository>(),
        ));
    gh.factory<_i18.EmailPasswordLoginBloc>(() => _i18.EmailPasswordLoginBloc(
        registerRepository: gh<_i12.LoginWithEmailRepository>()));
    gh.factory<_i19.HistoryBloc>(() =>
        _i19.HistoryBloc(productRepository: gh<_i14.ProductRepository>()));
    gh.factory<_i20.HomeBloc>(() => _i20.HomeBloc(
          authRepository: gh<_i3.AuthRepository>(),
          productRepository: gh<_i14.ProductRepository>(),
        ));
    gh.factory<_i21.RegisterBloc>(() =>
        _i21.RegisterBloc(registerRepository: gh<_i15.RegisterRepository>()));
    return this;
  }
}
