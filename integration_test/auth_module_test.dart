import 'package:budget_sales/app/modules/auth/domain/repository/auth_repository.dart';
import 'package:budget_sales/app/modules/auth/domain/usecase/login_email.dart';
import 'package:budget_sales/app/modules/auth/presentation/bloc/auth_bloc.dart';
import 'package:budget_sales/app/modules/auth/presentation/page/auth_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

import 'integration_fakes.dart';

/// Módulo de Auth para testes E2E – usa [IntegrationFakeAuthRepository].
class AuthModuleTest extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<AuthRepository>(
          (i) => IntegrationFakeAuthRepository(),
        ),
        Bind.factory(
            (i) => LoginEmail(repository: i.get<AuthRepository>())),
        BlocBind.singleton(
          (i) => AuthBloc(loginEmail: i.get<LoginEmail>()),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, args) => const AuthPage()),
      ];
}
