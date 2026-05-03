import 'dart:convert';

import 'package:budget_sales/app/core/gateway.dart';
import 'package:budget_sales/app/modules/budget/data/model/budget_item_model.dart';
import 'package:budget_sales/app/modules/budget/data/model/budget_model.dart';
import 'package:budget_sales/app/modules/budget/data/model/customer_model.dart';
import 'package:budget_sales/app/modules/budget/data/model/payment_type_model.dart';
import 'package:budget_sales/app/modules/budget/data/model/product_model.dart';
import 'package:budget_sales/app/modules/budget/domain/entity/budget_entity.dart';
import 'package:budget_sales/app/modules/budget/domain/entity/budget_item_entity.dart';

class BudgetRemoteDatasource extends Gateway {
  BudgetRemoteDatasource({required super.httpClient});

  // ── Budgets ──────────────────────────────────────────────────────────────

  Future<List<BudgetModel>> getBudgets({
    String? number,
    String? dateStart,
    String? dateEnd,
    String? customerName,
  }) async {
    final params = <String, String>{};
    if (number != null && number.isNotEmpty) params['number'] = number;
    if (dateStart != null && dateStart.isNotEmpty) params['dateStart'] = dateStart;
    if (dateEnd != null && dateEnd.isNotEmpty) params['dateEnd'] = dateEnd;
    if (customerName != null && customerName.isNotEmpty) {
      params['customerName'] = customerName;
    }

    final query =
        params.isEmpty ? '' : '?${params.entries.map((e) => '${e.key}=${Uri.encodeComponent(e.value)}').join('&')}';

    return request(
      'budgets$query',
      (body) {
        final list = jsonDecode(body) as List<dynamic>;
        return list
            .map((e) => BudgetModel.fromJson(e as Map<String, dynamic>))
            .toList();
      },
    );
  }

  Future<BudgetModel> getBudgetById(int id) => request(
        'budgets/$id',
        (body) => BudgetModel.fromJson(jsonDecode(body) as Map<String, dynamic>),
      );

  Future<BudgetModel> createBudget(BudgetEntity budget) => request(
        'budgets',
        (body) => BudgetModel.fromJson(jsonDecode(body) as Map<String, dynamic>),
        method: HTTPMethod.post,
        data: jsonEncode(BudgetModel.fromEntity(budget).toJson()),
      );

  Future<BudgetModel> updateBudget(BudgetEntity budget) => request(
        'budgets/${budget.id}',
        (body) => BudgetModel.fromJson(jsonDecode(body) as Map<String, dynamic>),
        method: HTTPMethod.put,
        data: jsonEncode(BudgetModel.fromEntity(budget).toJson()),
      );

  // ── Budget Items ──────────────────────────────────────────────────────────

  Future<List<BudgetItemModel>> getBudgetItems(int budgetId) => request(
        'budgets/$budgetId/items',
        (body) {
          final list = jsonDecode(body) as List<dynamic>;
          return list
              .map((e) => BudgetItemModel.fromJson(e as Map<String, dynamic>))
              .toList();
        },
      );

  Future<BudgetItemModel> createBudgetItem(
          int budgetId, BudgetItemEntity item) =>
      request(
        'budgets/$budgetId/items',
        (body) =>
            BudgetItemModel.fromJson(jsonDecode(body) as Map<String, dynamic>),
        method: HTTPMethod.post,
        data: jsonEncode(BudgetItemModel.fromEntity(item).toJson()),
      );

  Future<BudgetItemModel> updateBudgetItem(
          int budgetId, BudgetItemEntity item) =>
      request(
        'budgets/$budgetId/items/${item.id}',
        (body) =>
            BudgetItemModel.fromJson(jsonDecode(body) as Map<String, dynamic>),
        method: HTTPMethod.put,
        data: jsonEncode(BudgetItemModel.fromEntity(item).toJson()),
      );

  Future<bool> deleteBudgetItem(int budgetId, int itemId) => request(
        'budgets/$budgetId/items/$itemId',
        (body) => true,
        method: HTTPMethod.delete,
      );

  // ── Customers ─────────────────────────────────────────────────────────────

  Future<List<CustomerModel>> getCustomers({
    int? id,
    String? name,
    String? tradeName,
    String? cnpj,
  }) async {
    final params = <String, String>{};
    if (id != null && id > 0) params['id'] = id.toString();
    if (name != null && name.isNotEmpty) params['name'] = name;
    if (tradeName != null && tradeName.isNotEmpty) params['tradeName'] = tradeName;
    if (cnpj != null && cnpj.isNotEmpty) params['cnpj'] = cnpj;

    final query =
        params.isEmpty ? '' : '?${params.entries.map((e) => '${e.key}=${Uri.encodeComponent(e.value)}').join('&')}';

    return request(
      'customers$query',
      (body) {
        final list = jsonDecode(body) as List<dynamic>;
        return list
            .map((e) => CustomerModel.fromJson(e as Map<String, dynamic>))
            .toList();
      },
    );
  }

  // ── Payment Types ─────────────────────────────────────────────────────────

  Future<List<PaymentTypeModel>> getPaymentTypes({String? description}) async {
    final query = (description != null && description.isNotEmpty)
        ? '?description=${Uri.encodeComponent(description)}'
        : '';

    return request(
      'payment-types$query',
      (body) {
        final list = jsonDecode(body) as List<dynamic>;
        return list
            .map((e) => PaymentTypeModel.fromJson(e as Map<String, dynamic>))
            .toList();
      },
    );
  }

  // ── Products ──────────────────────────────────────────────────────────────

  Future<List<ProductModel>> getProducts({
    int? id,
    String? codeFactory,
    String? codeBar,
    String? codeSupplier,
    String? description,
    String? groupDescription,
    String? subgroupDescription,
    String? brandDescription,
  }) async {
    final params = <String, String>{};
    if (id != null && id > 0) params['id'] = id.toString();
    if (codeFactory != null && codeFactory.isNotEmpty) params['codeFactory'] = codeFactory;
    if (codeBar != null && codeBar.isNotEmpty) params['codeBar'] = codeBar;
    if (codeSupplier != null && codeSupplier.isNotEmpty) params['codeSupplier'] = codeSupplier;
    if (description != null && description.isNotEmpty) params['description'] = description;
    if (groupDescription != null && groupDescription.isNotEmpty) {
      params['groupDescription'] = groupDescription;
    }
    if (subgroupDescription != null && subgroupDescription.isNotEmpty) {
      params['subgroupDescription'] = subgroupDescription;
    }
    if (brandDescription != null && brandDescription.isNotEmpty) {
      params['brandDescription'] = brandDescription;
    }

    final query =
        params.isEmpty ? '' : '?${params.entries.map((e) => '${e.key}=${Uri.encodeComponent(e.value)}').join('&')}';

    return request(
      'products$query',
      (body) {
        final list = jsonDecode(body) as List<dynamic>;
        return list
            .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
            .toList();
      },
    );
  }

  // ── Stock Balance ─────────────────────────────────────────────────────────

  Future<List<StockBalanceModel>> getStockBalance(int productId) => request(
        'stock-balance?productId=$productId',
        (body) {
          final list = jsonDecode(body) as List<dynamic>;
          return list
              .map((e) => StockBalanceModel.fromJson(e as Map<String, dynamic>))
              .toList();
        },
      );

  // ── Price List ────────────────────────────────────────────────────────────

  Future<List<PriceListModel>> getPrices(int productId) => request(
        'prices/product/$productId',
        (body) {
          final list = jsonDecode(body) as List<dynamic>;
          return list
              .map((e) => PriceListModel.fromJson(e as Map<String, dynamic>))
              .toList();
        },
      );

  // ── Product Images ────────────────────────────────────────────────────────

  Future<List<ProductImageModel>> getProductImages(int productId) => request(
        'product-images?productId=$productId',
        (body) {
          final list = jsonDecode(body) as List<dynamic>;
          return list
              .map(
                  (e) => ProductImageModel.fromJson(e as Map<String, dynamic>))
              .toList();
        },
      );
}
