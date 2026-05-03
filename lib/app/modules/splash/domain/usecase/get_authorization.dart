import 'package:budget_sales/app/core/error/exceptions.dart';
import 'package:budget_sales/app/core/error/failures.dart';
import 'package:budget_sales/app/core/shared/usecase.dart';
import 'package:budget_sales/app/modules/splash/domain/repository/splash_respository.dart';
import 'package:dartz/dartz.dart';

class GetAuthorization implements UseCase<bool, ParamsAuthorization> {
  final SplashRepository repository;

  GetAuthorization({required this.repository});

  @override
  Future<Either<Failure, bool>> call(ParamsAuthorization params) async {
    try {
      return await repository.getAuthorization();
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}

class ParamsAuthorization {
  ParamsAuthorization();
}
