// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fs_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FSUser$ _$$FSUser$FromJson(Map<String, dynamic> json) => _$FSUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      productsHistory: (json['productsHistory'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      isAdmin: json['isAdmin'] as bool? ?? false,
    );

Map<String, dynamic> _$$FSUser$ToJson(_$FSUser$ instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'products': instance.products,
      'productsHistory': instance.productsHistory,
      'isAdmin': instance.isAdmin,
    };
