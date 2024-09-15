import 'package:equatable/equatable.dart';

class UserInfoEntity extends Equatable {
  final UserInfoAddressEntity address;
  final int id;
  final String email;
  final String username;
  final String password;
  final UserInfoNameEntity name;
  final String phone;
  final int v;

  const UserInfoEntity({
    required this.address,
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    required this.phone,
    required this.v,
  });

  @override
  List<Object?> get props => [
        address,
        id,
        email,
        username,
        password,
        name,
        phone,
        v,
      ];
}

class UserInfoAddressEntity extends Equatable {
  final UserInfoGeoEntity geolocation;
  final String city;
  final String street;
  final int number;
  final String zipcode;

  const UserInfoAddressEntity({
    required this.geolocation,
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
  });

  @override
  List<Object?> get props => [
        geolocation,
        city,
        street,
        number,
        zipcode,
      ];
}

class UserInfoGeoEntity extends Equatable {
  final String lat;
  final String long;

  const UserInfoGeoEntity({
    required this.lat,
    required this.long,
  });

  @override
  List<Object?> get props => [
        lat,
        long,
      ];
}

class UserInfoNameEntity extends Equatable {
  final String firstname;
  final String lastname;

  const UserInfoNameEntity({
    required this.firstname,
    required this.lastname,
  });

  @override
  List<Object?> get props => [
        firstname,
        lastname,
      ];
}
