import 'package:equatable/equatable.dart';

class UserAuthEntity extends Equatable {
  final String token;

  const UserAuthEntity({
    required this.token,
  });

  @override
  List<Object?> get props => [
        token,
      ];
}
