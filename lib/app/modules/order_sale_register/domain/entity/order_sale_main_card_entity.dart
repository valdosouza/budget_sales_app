import 'package:budget_sales/app/core/shared/model/order_paid_model.dart';
import 'package:budget_sales/app/modules/order_sale_register/data/model/order_sale_main_card_model.dart';
import 'package:budget_sales/app/modules/order_sale_register/data/model/order_sale_model.dart';

class OrderSaleMainCardEntity {
  OrderSaleMainCardEntity({
    OrderSaleModel? order,
    List<OrderSaleCardModel>? items,
    List<OrderPaidModel>? payments,
  });
}

class OrderSaleCardEntity {
  OrderSaleCardEntity({
    int? tbProductId,
    String? nameProduct,
    double? bonus,
    double? sale,
    double? unitValue,
    double? subtotal,
  });
}
