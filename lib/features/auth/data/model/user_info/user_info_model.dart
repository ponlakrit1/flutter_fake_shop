import 'package:json_annotation/json_annotation.dart';

part 'user_info_model.g.dart';

@JsonSerializable()
class UserInfoModel {
  final UserInfoAddressModel address;
  final int id;
  final String email;
  final String username;
  final String password;
  final UserInfoNameModel name;
  final String phone;
  final int v;

  UserInfoModel({
    required this.address,
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    required this.phone,
    required this.v,
  });

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoModelToJson(this);
}

@JsonSerializable()
class UserInfoAddressModel {
  final UserInfoGeoModel geolocation;
  final String city;
  final String street;
  final int number;
  final String zipcode;

  UserInfoAddressModel({
    required this.geolocation,
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
  });

  factory UserInfoAddressModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoAddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoAddressModelToJson(this);
}

@JsonSerializable()
class UserInfoGeoModel {
  final String lat;
  final String long;

  UserInfoGeoModel({
    required this.lat,
    required this.long,
  });

  factory UserInfoGeoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoGeoModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoGeoModelToJson(this);
}

@JsonSerializable()
class UserInfoNameModel {
  final String firstname;
  final String lastname;

  UserInfoNameModel({
    required this.firstname,
    required this.lastname,
  });

  factory UserInfoNameModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoNameModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoNameModelToJson(this);
}
