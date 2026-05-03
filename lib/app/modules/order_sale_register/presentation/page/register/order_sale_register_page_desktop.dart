import 'package:budget_sales/app/core/shared/theme.dart';
import 'package:flutter/material.dart';

class OrderSaleRegisterPageDesktop extends StatefulWidget {
  const OrderSaleRegisterPageDesktop({super.key});

  @override
  State<OrderSaleRegisterPageDesktop> createState() =>
      OrderSaleRegisterPageDesktopState();
}

class OrderSaleRegisterPageDesktopState
    extends State<OrderSaleRegisterPageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: kBoxDecorationflexibleSpace,
        ),
        title: kAppTitle,
      ),
      body: const Expanded(child: Text("Vendas - Desktop")),
    );
  }
}
