import 'package:freezed_annotation/freezed_annotation.dart';

part 'fs_product.freezed.dart';
part 'fs_product.g.dart';

@freezed
class FSProduct with _$FSProduct {
  const factory FSProduct({
    required String id,
    required String name,
    required String description,
    required String cost,
  }) = FSProduct$;

  factory FSProduct.fromJson(Map<String, dynamic> json) =>
      _$FSProductFromJson(json);
}
