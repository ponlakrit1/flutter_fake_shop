import 'package:flutter_fake_shop/features/auth/data/model/user_info/user_info_model.dart';
import 'package:flutter_fake_shop/features/auth/domain/entity/user_info_entity.dart';

extension UserInfoModelExtension on UserInfoModel {
  UserInfoEntity toUserInfoEntity() {
    return UserInfoEntity(
        address: address.toUserInfoAddressEntity(),
        id: id,
        email: email,
        username: username,
        password: password,
        name: name.toUserInfoNameEntity(),
        phone: phone,
        v: v);
  }
}

extension UserInfoAddressModelExtension on UserInfoAddressModel {
  UserInfoAddressEntity toUserInfoAddressEntity() {
    return UserInfoAddressEntity(
        geolocation: geolocation.toUserInfoGeoEntity(),
        city: city,
        street: street,
        number: number,
        zipcode: zipcode);
  }
}

extension UserInfoGeoModelExtension on UserInfoGeoModel {
  UserInfoGeoEntity toUserInfoGeoEntity() {
    return UserInfoGeoEntity(lat: lat, long: long);
  }
}

extension UserInfoNameModelExtension on UserInfoNameModel {
  UserInfoNameEntity toUserInfoNameEntity() {
    return UserInfoNameEntity(firstname: firstname, lastname: lastname);
  }
}
