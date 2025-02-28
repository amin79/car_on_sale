part of 'failure.dart';

final class GeneralFailure extends Failure {
  @override
  FailureCode get code => FailureCode.unknown;

  @override
  final Object? error;

  GeneralFailure({this.error});
}

final class AuthFailure extends Failure {
  @override
  FailureCode get code => FailureCode.authentication;
}

final class NetworkFailure extends Failure {
  @override
  FailureCode get code => FailureCode.network;
}

final class ServerFailure extends Failure {
  @override
  FailureCode get code => FailureCode.server;

  @override
  final Object? error;
  ServerFailure({this.error});
}
