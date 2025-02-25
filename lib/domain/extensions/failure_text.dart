import 'package:car_on_sale/domain/failure/failure.dart';

extension FailureText on Failure {
  String get text {
    return switch (this) {
      UnknownFailure() => 'Unknown error',
      SignInFailure() => 'Authentication failed'
    };
  }
}
