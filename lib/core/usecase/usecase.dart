import 'package:dartz/dartz.dart';
import 'package:flutter_fake_shop/core/network/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
