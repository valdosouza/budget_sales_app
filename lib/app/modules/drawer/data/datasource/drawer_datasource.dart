import 'package:budget_sales/app/core/gateway.dart';

abstract class DrawerDataSource extends Gateway {
  DrawerDataSource({required super.httpClient});
}

class DrawerDataSourceImpl extends DrawerDataSource {
  DrawerDataSourceImpl({required super.httpClient});
}
