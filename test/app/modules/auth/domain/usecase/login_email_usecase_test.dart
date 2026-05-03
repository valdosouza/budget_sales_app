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
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    usecase = LoginEmail(repository: mockAuthRepository);
  });

  const tAuthModel = AuthModel(
    authenticated: true,
    id: 1,
    name: 'Joao Silva',
    login: 'joao',
    level: 'V',
    active: 'S',
    salesmanId: 10,
  );

  const tParams = LoginParams(username: 'joao', password: '1234');

  test('deve retornar AuthEntity autenticada quando credenciais são válidas',
      () async {
    when(() => mockAuthRepository.login(
          username: tParams.username,
          password: tParams.password,
        )).thenAnswer(
      (_) async => const Right<Failure, AuthEntity>(tAuthModel),
    );

    final result = await usecase(tParams);

    expect(result, const Right<Failure, AuthEntity>(tAuthModel));
    verify(() => mockAuthRepository.login(
          username: tParams.username,
          password: tParams.password,
        )).called(1);
    verifyNoMoreInteractions(mockAuthRepository);
  });
}
