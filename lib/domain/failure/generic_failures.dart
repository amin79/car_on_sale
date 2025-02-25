part of 'failure.dart';

final class UnknownFailure extends Failure {
  @override
  FailureCode get code => FailureCode.unknown;
}

final class SignInFailure extends Failure {
  @override
  FailureCode get code => FailureCode.signInFailed;
}
