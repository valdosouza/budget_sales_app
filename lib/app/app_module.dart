import 'package:budget_sales/app/core/shared/page_404.dart';
import 'package:budget_sales/app/modules/auth/auth_module.dart';
import 'package:budget_sales/app/modules/auth/presentation/page/server_ip_page.dart';
import 'package:budget_sales/app/modules/budget/budget_module.dart';
import 'package:budget_sales/app/modules/drawer/drawer_module.dart';
import 'package:budget_sales/app/modules/drawer/presentation/bloc/drawer_bloc.dart';
import 'package:budget_sales/app/modules/home/home_module.dart';
import 'package:budget_sales/app/modules/order_sale_register/order_sale_register_module.dart';
import 'package:budget_sales/app/modules/splash/splash_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        AsyncBind((i) => SharedPreferences.getInstance()),
        Bind.singleton((i) => DrawerBloc()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: SplashModule()),
        ModuleRoute('/drawer', module: DrawerModule()),
        ModuleRoute('/auth', module: AuthModule()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/ordersale', module: OrderSaleRegisterModule()),

        // Configuração do IP do servidor (acessível sem login)
        ChildRoute(
          '/server-config/',
          child: (_, args) => const ServerIpPage(),
        ),

        // Módulo principal de orçamentos
        ModuleRoute('/budget', module: BudgetModule()),

        WildcardRoute(child: (_, __) => const Page404()),
      ];
}
