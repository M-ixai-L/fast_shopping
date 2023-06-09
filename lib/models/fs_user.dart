import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'fs_user.freezed.dart';
part 'fs_user.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class FSUser with _$FSUser {
  const factory FSUser({
    required String uid,
    required String email,
    required String firstName,
    required String lastName,
    required String? image,
    @Default(<String>[]) List<String> products,
    @Default(<String>[]) List<String> productsHistory,
    @Default(false) bool isAdmin,
  }) = FSUser$;

  factory FSUser.fromJson(Map<String, dynamic> json) => _$FSUserFromJson(json);
}
