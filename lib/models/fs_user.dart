import 'package:freezed_annotation/freezed_annotation.dart';

part 'fs_user.freezed.dart';
part 'fs_user.g.dart';

@freezed
class FSUser with _$FSUser {
  const factory FSUser({
    required String uid,
    required String email,
    required String firstName,
    required String lastName,
  }) = FSUser$;

  factory FSUser.fromJson(Map<String, dynamic> json) => _$FSUserFromJson(json);
}
