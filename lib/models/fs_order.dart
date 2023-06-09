import 'package:freezed_annotation/freezed_annotation.dart';

part 'fs_order.freezed.dart';
part 'fs_order.g.dart';

@freezed
class FSOrder with _$FSOrder {
  const factory FSOrder({
    required String orderId,
    required String productId,
    required String date,
  }) = FSOrder$;

  factory FSOrder.fromJson(Map<String, dynamic> json) =>
      _$FSOrderFromJson(json);
}
