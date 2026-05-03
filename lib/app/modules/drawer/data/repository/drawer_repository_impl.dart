import 'package:budget_sales/app/modules/drawer/data/datasource/drawer_datasource.dart';
import 'package:budget_sales/app/modules/drawer/domain/repository/drawer_respository.dart';

class DrawerRepositoryImpl implements DrawertRepository {
  final DrawerDataSource datasource;

  DrawerRepositoryImpl({required this.datasource});
}
