import 'package:budget_sales/app/core/error/failures.dart';
import 'package:budget_sales/app/modules/auth/data/model/auth_model.dart';
import 'package:budget_sales/app/modules/auth/domain/entity/auth_entity.dart';
import 'package:budget_sales/app/modules/auth/domain/repository/auth_repository.dart';
import 'package:budget_sales/app/modules/auth/domain/usecase/login_email.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late LoginEmail usecase;
  late MockAuthRepository mockRepository;

  const tAuthModel = AuthModel(
    authenticated: true,
    id: 1,
    name: 'Teste',
    login: 'test',
    level: 'V',
    active: 'S',
    salesmanId: 5,
  );

  setUp(() {
    mockRepository = MockAuthRepository();
    usecase = LoginEmail(repository: mockRepository);
  });

  group('LoginEmail', () {
    test('retorna Right(AuthEntity) quando repositório tem sucesso', () async {
      when(() => mockRepository.login(
            username: any(named: 'username'),
            password: any(named: 'password'),
          )).thenAnswer(
        (_) async => const Right<Failure, AuthEntity>(tAuthModel),
      );

      final result = await usecase(
        const LoginParams(username: 'test', password: 'pass'),
      );

      expect(result, const Right<Failure, AuthEntity>(tAuthModel));
      verify(() => mockRepository.login(
            username: 'test',
            password: 'pass',
          )).called(1);
    });

    test('retorna Left(Failure) quando repositório retorna Left', () async {
      when(() => mockRepository.login(
            username: any(named: 'username'),
            password: any(named: 'password'),
          )).thenAnswer((_) async => Left(ServerFailure()));

      final result = await usecase(
        const LoginParams(username: 'x', password: 'y'),
      );

      expect(result.isLeft(), true);
    });
  });
}
