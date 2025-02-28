import 'package:car_on_sale/domain/failure/failure.dart';

extension FailureTranslate on Failure {
  String get translate {
    return switch (this) {
      GeneralFailure(error: var msg) =>
        (msg is String && msg.isNotEmpty) ? msg : 'Unknown error',
      AuthFailure() => 'Authentication failed',
      NetworkFailure() => "Request timed out. Check your connection.",
      ServerFailure(error: var msg) =>
        (msg is String && msg.isNotEmpty) ? msg : 'Server error',
    };
  }
}
