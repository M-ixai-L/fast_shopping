library auth_bloc;

import 'dart:async';

import 'package:fast_shopping/login/infrastructure/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'entities/apple_auth_data.dart';
part 'entities/google_auth_data.dart';
part 'entities/login_state.dart';
part 'entities/user.dart';
part 'entities/user_integrations.dart';
part 'entities/user_properties.dart';
part 'events.dart';
part 'index.freezed.dart';
part 'index.g.dart';
part 'login_bloc.dart';
