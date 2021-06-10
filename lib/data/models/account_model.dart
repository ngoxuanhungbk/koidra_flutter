import 'package:json_annotation/json_annotation.dart';
part 'account_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class AccountModel<T> {
  int id;
  String email;
  String password;
  String avatar;

  AccountModel(this.id, this.email, this.password, this.avatar);

  factory AccountModel.fromJson(Map<String, dynamic> json, T Function(Object json) fromJsonT) => _$AccountModelFromJson(json, fromJsonT);
}