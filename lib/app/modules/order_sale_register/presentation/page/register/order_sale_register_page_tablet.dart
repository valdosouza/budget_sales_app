import 'package:budget_sales/app/core/shared/theme.dart';
import 'package:flutter/material.dart';

class OrderSaleRegisterPageTablet extends StatefulWidget {
  const OrderSaleRegisterPageTablet({super.key});

  @override
  State<OrderSaleRegisterPageTablet> createState() =>
      OrderSaleRegisterPageTabletState();
}

class OrderSaleRegisterPageTabletState
    extends State<OrderSaleRegisterPageTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: kBoxDecorationflexibleSpace,
        ),
        title: kAppTitle,
      ),
      body: const Expanded(child: Text("Vendas - Tablet")),
    );
  }
}
