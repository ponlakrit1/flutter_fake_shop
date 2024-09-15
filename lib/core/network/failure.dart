import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => <Object>[];
}

class ServerFailure extends Failure {
  final int? statusCode;
  final String? message;
  final String? error;

  ServerFailure({this.message, this.statusCode, this.error});
}
