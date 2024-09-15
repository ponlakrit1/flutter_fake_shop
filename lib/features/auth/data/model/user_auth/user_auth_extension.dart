import 'package:flutter_fake_shop/features/auth/data/model/user_auth/user_auth_model.dart';
import 'package:flutter_fake_shop/features/auth/domain/entity/user_auth_entity.dart';

extension UserAuthModelExtension on UserAuthModel {
  UserAuthEntity toUserAuthEntity() {
    return UserAuthEntity(
      token: token,
    );
  }
}
