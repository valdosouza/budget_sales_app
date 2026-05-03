import 'package:budget_sales/app/core/error/failures.dart';
import 'package:budget_sales/app/modules/order_sale_register/data/model/order_sale_main_card_model.dart';
import 'package:budget_sales/app/modules/order_sale_register/data/model/order_sale_model.dart';
import 'package:budget_sales/app/modules/order_sale_register/domain/repository/order_sale_register_repository.dart';
import 'package:dartz/dartz.dart';

class OrderSaleRegisterPost {
  final OrderSaleRegisterRepository repository;

  OrderSaleRegisterPost({required this.repository});
  Future<Either<Failure, OrderSaleModel>> call(
      OrderSaleMainCardModel orderSaleMainModel) async {
    return await repository.post(model: orderSaleMainModel);
  }
}
