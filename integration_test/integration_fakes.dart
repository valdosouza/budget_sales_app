import 'package:budget_sales/app/core/error/failures.dart';
import 'package:budget_sales/app/modules/auth/data/model/auth_model.dart';
import 'package:budget_sales/app/modules/auth/domain/entity/auth_entity.dart';
import 'package:budget_sales/app/modules/auth/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';

/// Fake [AuthRepository] para testes de integração (sem HTTP real).
class IntegrationFakeAuthRepository implements AuthRepository {
  @override
  Future<Either<Failure, AuthEntity>> login({
    required String username,
    required String password,
  }) async {
    return Right(
      AuthModel(
        authenticated: true,
        id: 1,
        name: 'Vendedor Teste',
        login: username,
        level: 'V',
        active: 'S',
        salesmanId: 10,
      ),
    );
  }
}
