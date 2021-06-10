// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountModel<T> _$AccountModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object json) fromJsonT,
) {
  return AccountModel<T>(
    json['id'] as int,
    json['email'] as String,
    json['password'] as String,
    json['avatar'] as String,
  );
}

Map<String, dynamic> _$AccountModelToJson<T>(
  AccountModel<T> instance,
  Object Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password': instance.password,
      'avatar': instance.avatar,
    };
