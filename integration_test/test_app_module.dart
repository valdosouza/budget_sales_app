import 'package:budget_sales/app/app_module.dart';
import 'package:budget_sales/app/core/shared/page_404.dart';
import 'package:budget_sales/app/modules/drawer/drawer_module.dart';
import 'package:budget_sales/app/modules/home/home_module.dart';
import 'package:budget_sales/app/modules/order_sale_register/order_sale_register_module.dart';
import 'package:budget_sales/app/modules/splash/splash_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'auth_module_test.dart';

/// App module for integration tests: same as [AppModule] but uses [AuthModuleTest]
/// so login does not hit the real API.
class TestAppModule extends Module {
  @override
  List<Bind> get binds => AppModule().binds;

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: SplashModule()),
        ModuleRoute('/drawer', module: DrawerModule()),
        ModuleRoute('/auth', module: AuthModuleTest()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/ordersale', module: OrderSaleRegisterModule()),
        WildcardRoute(child: (_, __) => const Page404()),
      ];
}
