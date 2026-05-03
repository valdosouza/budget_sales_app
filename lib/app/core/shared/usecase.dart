import 'package:budget_sales/app/core/error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Output, Params> {
  Future<Either<Failure, Output>> call(Params params);
}
