import 'package:car_on_sale/domain/failure/failure_code.dart';
import 'package:equatable/equatable.dart';

part 'generic_failures.dart';

sealed class Failure extends Equatable {
  FailureCode get code;
  Object? get error => null;
  StackTrace? get stackTrace => null;

  @override
  List<Object?> get props => [code, error, stackTrace];
}
