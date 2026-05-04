// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $TbBudgetTable extends TbBudget
    with TableInfo<$TbBudgetTable, TbBudgetData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TbBudgetTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'CTC_CODIGO', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _orderIdMeta =
      const VerificationMeta('orderId');
  @override
  late final GeneratedColumn<int> orderId = GeneratedColumn<int>(
      'CTC_CODPED', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
      'CTC_NUMERO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'CTC_CODUSU', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'CTC_DATA', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _customerIdMeta =
      const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<int> customerId = GeneratedColumn<int>(
      'CTC_CODEMP', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _customerNameMeta =
      const VerificationMeta('customerName');
  @override
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
      'CTC_FANTASIA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _paymentTypeIdMeta =
      const VerificationMeta('paymentTypeId');
  @override
  late final GeneratedColumn<int> paymentTypeId = GeneratedColumn<int>(
      'CTC_CODFPG', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _paymentTermsMeta =
      const VerificationMeta('paymentTerms');
  @override
  late final GeneratedColumn<String> paymentTerms = GeneratedColumn<String>(
      'CTC_PRAZO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _quantityProductsMeta =
      const VerificationMeta('quantityProducts');
  @override
  late final GeneratedColumn<double> quantityProducts = GeneratedColumn<double>(
      'CTC_QT_PRODUTO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _totalProductsMeta =
      const VerificationMeta('totalProducts');
  @override
  late final GeneratedColumn<double> totalProducts = GeneratedColumn<double>(
      'CTC_VL_PRODUTO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _freightMeta =
      const VerificationMeta('freight');
  @override
  late final GeneratedColumn<double> freight = GeneratedColumn<double>(
      'CTC_VL_FRETE', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountPercentMeta =
      const VerificationMeta('discountPercent');
  @override
  late final GeneratedColumn<double> discountPercent = GeneratedColumn<double>(
      'CTC_ALIQ_DESCONTO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountValueMeta =
      const VerificationMeta('discountValue');
  @override
  late final GeneratedColumn<double> discountValue = GeneratedColumn<double>(
      'CTC_VL_DESCONTO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<double> total = GeneratedColumn<double>(
      'CTC_VL_COTACAO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _contactMeta =
      const VerificationMeta('contact');
  @override
  late final GeneratedColumn<String> contact = GeneratedColumn<String>(
      'CTC_CONTATO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _validityMeta =
      const VerificationMeta('validity');
  @override
  late final GeneratedColumn<String> validity = GeneratedColumn<String>(
      'CTC_VALIDADE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _deliveryTimeMeta =
      const VerificationMeta('deliveryTime');
  @override
  late final GeneratedColumn<String> deliveryTime = GeneratedColumn<String>(
      'CTC_PRZ_ENTREGA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _salesmanIdMeta =
      const VerificationMeta('salesmanId');
  @override
  late final GeneratedColumn<int> salesmanId = GeneratedColumn<int>(
      'CTC_CODVDO', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _warehouseIdMeta =
      const VerificationMeta('warehouseId');
  @override
  late final GeneratedColumn<int> warehouseId = GeneratedColumn<int>(
      'CTC_CODMHA', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'CTC_STATUS', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  @override
  late final GeneratedColumn<int> remoteId = GeneratedColumn<int>(
      'CTC_REMOTE_ID', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        orderId,
        number,
        userId,
        date,
        customerId,
        customerName,
        paymentTypeId,
        paymentTerms,
        quantityProducts,
        totalProducts,
        freight,
        discountPercent,
        discountValue,
        total,
        contact,
        validity,
        deliveryTime,
        salesmanId,
        warehouseId,
        status,
        remoteId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'TB_COTACAO';
  @override
  VerificationContext validateIntegrity(Insertable<TbBudgetData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CTC_CODIGO')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['CTC_CODIGO']!, _idMeta));
    }
    if (data.containsKey('CTC_CODPED')) {
      context.handle(_orderIdMeta,
          orderId.isAcceptableOrUnknown(data['CTC_CODPED']!, _orderIdMeta));
    }
    if (data.containsKey('CTC_NUMERO')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['CTC_NUMERO']!, _numberMeta));
    }
    if (data.containsKey('CTC_CODUSU')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['CTC_CODUSU']!, _userIdMeta));
    }
    if (data.containsKey('CTC_DATA')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['CTC_DATA']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('CTC_CODEMP')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CTC_CODEMP']!, _customerIdMeta));
    }
    if (data.containsKey('CTC_FANTASIA')) {
      context.handle(
          _customerNameMeta,
          customerName.isAcceptableOrUnknown(
              data['CTC_FANTASIA']!, _customerNameMeta));
    }
    if (data.containsKey('CTC_CODFPG')) {
      context.handle(
          _paymentTypeIdMeta,
          paymentTypeId.isAcceptableOrUnknown(
              data['CTC_CODFPG']!, _paymentTypeIdMeta));
    }
    if (data.containsKey('CTC_PRAZO')) {
      context.handle(
          _paymentTermsMeta,
          paymentTerms.isAcceptableOrUnknown(
              data['CTC_PRAZO']!, _paymentTermsMeta));
    }
    if (data.containsKey('CTC_QT_PRODUTO')) {
      context.handle(
          _quantityProductsMeta,
          quantityProducts.isAcceptableOrUnknown(
              data['CTC_QT_PRODUTO']!, _quantityProductsMeta));
    }
    if (data.containsKey('CTC_VL_PRODUTO')) {
      context.handle(
          _totalProductsMeta,
          totalProducts.isAcceptableOrUnknown(
              data['CTC_VL_PRODUTO']!, _totalProductsMeta));
    }
    if (data.containsKey('CTC_VL_FRETE')) {
      context.handle(_freightMeta,
          freight.isAcceptableOrUnknown(data['CTC_VL_FRETE']!, _freightMeta));
    }
    if (data.containsKey('CTC_ALIQ_DESCONTO')) {
      context.handle(
          _discountPercentMeta,
          discountPercent.isAcceptableOrUnknown(
              data['CTC_ALIQ_DESCONTO']!, _discountPercentMeta));
    }
    if (data.containsKey('CTC_VL_DESCONTO')) {
      context.handle(
          _discountValueMeta,
          discountValue.isAcceptableOrUnknown(
              data['CTC_VL_DESCONTO']!, _discountValueMeta));
    }
    if (data.containsKey('CTC_VL_COTACAO')) {
      context.handle(_totalMeta,
          total.isAcceptableOrUnknown(data['CTC_VL_COTACAO']!, _totalMeta));
    }
    if (data.containsKey('CTC_CONTATO')) {
      context.handle(_contactMeta,
          contact.isAcceptableOrUnknown(data['CTC_CONTATO']!, _contactMeta));
    }
    if (data.containsKey('CTC_VALIDADE')) {
      context.handle(_validityMeta,
          validity.isAcceptableOrUnknown(data['CTC_VALIDADE']!, _validityMeta));
    }
    if (data.containsKey('CTC_PRZ_ENTREGA')) {
      context.handle(
          _deliveryTimeMeta,
          deliveryTime.isAcceptableOrUnknown(
              data['CTC_PRZ_ENTREGA']!, _deliveryTimeMeta));
    }
    if (data.containsKey('CTC_CODVDO')) {
      context.handle(
          _salesmanIdMeta,
          salesmanId.isAcceptableOrUnknown(
              data['CTC_CODVDO']!, _salesmanIdMeta));
    }
    if (data.containsKey('CTC_CODMHA')) {
      context.handle(
          _warehouseIdMeta,
          warehouseId.isAcceptableOrUnknown(
              data['CTC_CODMHA']!, _warehouseIdMeta));
    }
    if (data.containsKey('CTC_STATUS')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['CTC_STATUS']!, _statusMeta));
    }
    if (data.containsKey('CTC_REMOTE_ID')) {
      context.handle(
          _remoteIdMeta,
          remoteId.isAcceptableOrUnknown(
              data['CTC_REMOTE_ID']!, _remoteIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TbBudgetData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TbBudgetData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CTC_CODIGO'])!,
      orderId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CTC_CODPED'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CTC_NUMERO']),
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CTC_CODUSU'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}CTC_DATA'])!,
      customerId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CTC_CODEMP'])!,
      customerName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CTC_FANTASIA']),
      paymentTypeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CTC_CODFPG']),
      paymentTerms: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CTC_PRAZO']),
      quantityProducts: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}CTC_QT_PRODUTO']),
      totalProducts: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}CTC_VL_PRODUTO']),
      freight: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}CTC_VL_FRETE']),
      discountPercent: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}CTC_ALIQ_DESCONTO']),
      discountValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}CTC_VL_DESCONTO']),
      total: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}CTC_VL_COTACAO']),
      contact: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CTC_CONTATO']),
      validity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CTC_VALIDADE']),
      deliveryTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CTC_PRZ_ENTREGA']),
      salesmanId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CTC_CODVDO']),
      warehouseId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CTC_CODMHA']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CTC_STATUS']),
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}CTC_REMOTE_ID']),
    );
  }

  @override
  $TbBudgetTable createAlias(String alias) {
    return $TbBudgetTable(attachedDatabase, alias);
  }
}

class TbBudgetData extends DataClass implements Insertable<TbBudgetData> {
  final int id;
  final int orderId;
  final String? number;
  final int userId;
  final DateTime date;
  final int customerId;
  final String? customerName;
  final int? paymentTypeId;
  final String? paymentTerms;
  final double? quantityProducts;
  final double? totalProducts;
  final double? freight;
  final double? discountPercent;
  final double? discountValue;
  final double? total;
  final String? contact;
  final String? validity;
  final String? deliveryTime;
  final int? salesmanId;
  final int? warehouseId;
  final String? status;
  final int? remoteId;
  const TbBudgetData(
      {required this.id,
      required this.orderId,
      this.number,
      required this.userId,
      required this.date,
      required this.customerId,
      this.customerName,
      this.paymentTypeId,
      this.paymentTerms,
      this.quantityProducts,
      this.totalProducts,
      this.freight,
      this.discountPercent,
      this.discountValue,
      this.total,
      this.contact,
      this.validity,
      this.deliveryTime,
      this.salesmanId,
      this.warehouseId,
      this.status,
      this.remoteId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['CTC_CODIGO'] = Variable<int>(id);
    map['CTC_CODPED'] = Variable<int>(orderId);
    if (!nullToAbsent || number != null) {
      map['CTC_NUMERO'] = Variable<String>(number);
    }
    map['CTC_CODUSU'] = Variable<int>(userId);
    map['CTC_DATA'] = Variable<DateTime>(date);
    map['CTC_CODEMP'] = Variable<int>(customerId);
    if (!nullToAbsent || customerName != null) {
      map['CTC_FANTASIA'] = Variable<String>(customerName);
    }
    if (!nullToAbsent || paymentTypeId != null) {
      map['CTC_CODFPG'] = Variable<int>(paymentTypeId);
    }
    if (!nullToAbsent || paymentTerms != null) {
      map['CTC_PRAZO'] = Variable<String>(paymentTerms);
    }
    if (!nullToAbsent || quantityProducts != null) {
      map['CTC_QT_PRODUTO'] = Variable<double>(quantityProducts);
    }
    if (!nullToAbsent || totalProducts != null) {
      map['CTC_VL_PRODUTO'] = Variable<double>(totalProducts);
    }
    if (!nullToAbsent || freight != null) {
      map['CTC_VL_FRETE'] = Variable<double>(freight);
    }
    if (!nullToAbsent || discountPercent != null) {
      map['CTC_ALIQ_DESCONTO'] = Variable<double>(discountPercent);
    }
    if (!nullToAbsent || discountValue != null) {
      map['CTC_VL_DESCONTO'] = Variable<double>(discountValue);
    }
    if (!nullToAbsent || total != null) {
      map['CTC_VL_COTACAO'] = Variable<double>(total);
    }
    if (!nullToAbsent || contact != null) {
      map['CTC_CONTATO'] = Variable<String>(contact);
    }
    if (!nullToAbsent || validity != null) {
      map['CTC_VALIDADE'] = Variable<String>(validity);
    }
    if (!nullToAbsent || deliveryTime != null) {
      map['CTC_PRZ_ENTREGA'] = Variable<String>(deliveryTime);
    }
    if (!nullToAbsent || salesmanId != null) {
      map['CTC_CODVDO'] = Variable<int>(salesmanId);
    }
    if (!nullToAbsent || warehouseId != null) {
      map['CTC_CODMHA'] = Variable<int>(warehouseId);
    }
    if (!nullToAbsent || status != null) {
      map['CTC_STATUS'] = Variable<String>(status);
    }
    if (!nullToAbsent || remoteId != null) {
      map['CTC_REMOTE_ID'] = Variable<int>(remoteId);
    }
    return map;
  }

  TbBudgetCompanion toCompanion(bool nullToAbsent) {
    return TbBudgetCompanion(
      id: Value(id),
      orderId: Value(orderId),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      userId: Value(userId),
      date: Value(date),
      customerId: Value(customerId),
      customerName: customerName == null && nullToAbsent
          ? const Value.absent()
          : Value(customerName),
      paymentTypeId: paymentTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentTypeId),
      paymentTerms: paymentTerms == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentTerms),
      quantityProducts: quantityProducts == null && nullToAbsent
          ? const Value.absent()
          : Value(quantityProducts),
      totalProducts: totalProducts == null && nullToAbsent
          ? const Value.absent()
          : Value(totalProducts),
      freight: freight == null && nullToAbsent
          ? const Value.absent()
          : Value(freight),
      discountPercent: discountPercent == null && nullToAbsent
          ? const Value.absent()
          : Value(discountPercent),
      discountValue: discountValue == null && nullToAbsent
          ? const Value.absent()
          : Value(discountValue),
      total:
          total == null && nullToAbsent ? const Value.absent() : Value(total),
      contact: contact == null && nullToAbsent
          ? const Value.absent()
          : Value(contact),
      validity: validity == null && nullToAbsent
          ? const Value.absent()
          : Value(validity),
      deliveryTime: deliveryTime == null && nullToAbsent
          ? const Value.absent()
          : Value(deliveryTime),
      salesmanId: salesmanId == null && nullToAbsent
          ? const Value.absent()
          : Value(salesmanId),
      warehouseId: warehouseId == null && nullToAbsent
          ? const Value.absent()
          : Value(warehouseId),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      remoteId: remoteId == null && nullToAbsent
          ? const Value.absent()
          : Value(remoteId),
    );
  }

  factory TbBudgetData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TbBudgetData(
      id: serializer.fromJson<int>(json['id']),
      orderId: serializer.fromJson<int>(json['orderId']),
      number: serializer.fromJson<String?>(json['number']),
      userId: serializer.fromJson<int>(json['userId']),
      date: serializer.fromJson<DateTime>(json['date']),
      customerId: serializer.fromJson<int>(json['customerId']),
      customerName: serializer.fromJson<String?>(json['customerName']),
      paymentTypeId: serializer.fromJson<int?>(json['paymentTypeId']),
      paymentTerms: serializer.fromJson<String?>(json['paymentTerms']),
      quantityProducts: serializer.fromJson<double?>(json['quantityProducts']),
      totalProducts: serializer.fromJson<double?>(json['totalProducts']),
      freight: serializer.fromJson<double?>(json['freight']),
      discountPercent: serializer.fromJson<double?>(json['discountPercent']),
      discountValue: serializer.fromJson<double?>(json['discountValue']),
      total: serializer.fromJson<double?>(json['total']),
      contact: serializer.fromJson<String?>(json['contact']),
      validity: serializer.fromJson<String?>(json['validity']),
      deliveryTime: serializer.fromJson<String?>(json['deliveryTime']),
      salesmanId: serializer.fromJson<int?>(json['salesmanId']),
      warehouseId: serializer.fromJson<int?>(json['warehouseId']),
      status: serializer.fromJson<String?>(json['status']),
      remoteId: serializer.fromJson<int?>(json['remoteId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'orderId': serializer.toJson<int>(orderId),
      'number': serializer.toJson<String?>(number),
      'userId': serializer.toJson<int>(userId),
      'date': serializer.toJson<DateTime>(date),
      'customerId': serializer.toJson<int>(customerId),
      'customerName': serializer.toJson<String?>(customerName),
      'paymentTypeId': serializer.toJson<int?>(paymentTypeId),
      'paymentTerms': serializer.toJson<String?>(paymentTerms),
      'quantityProducts': serializer.toJson<double?>(quantityProducts),
      'totalProducts': serializer.toJson<double?>(totalProducts),
      'freight': serializer.toJson<double?>(freight),
      'discountPercent': serializer.toJson<double?>(discountPercent),
      'discountValue': serializer.toJson<double?>(discountValue),
      'total': serializer.toJson<double?>(total),
      'contact': serializer.toJson<String?>(contact),
      'validity': serializer.toJson<String?>(validity),
      'deliveryTime': serializer.toJson<String?>(deliveryTime),
      'salesmanId': serializer.toJson<int?>(salesmanId),
      'warehouseId': serializer.toJson<int?>(warehouseId),
      'status': serializer.toJson<String?>(status),
      'remoteId': serializer.toJson<int?>(remoteId),
    };
  }

  TbBudgetData copyWith(
          {int? id,
          int? orderId,
          Value<String?> number = const Value.absent(),
          int? userId,
          DateTime? date,
          int? customerId,
          Value<String?> customerName = const Value.absent(),
          Value<int?> paymentTypeId = const Value.absent(),
          Value<String?> paymentTerms = const Value.absent(),
          Value<double?> quantityProducts = const Value.absent(),
          Value<double?> totalProducts = const Value.absent(),
          Value<double?> freight = const Value.absent(),
          Value<double?> discountPercent = const Value.absent(),
          Value<double?> discountValue = const Value.absent(),
          Value<double?> total = const Value.absent(),
          Value<String?> contact = const Value.absent(),
          Value<String?> validity = const Value.absent(),
          Value<String?> deliveryTime = const Value.absent(),
          Value<int?> salesmanId = const Value.absent(),
          Value<int?> warehouseId = const Value.absent(),
          Value<String?> status = const Value.absent(),
          Value<int?> remoteId = const Value.absent()}) =>
      TbBudgetData(
        id: id ?? this.id,
        orderId: orderId ?? this.orderId,
        number: number.present ? number.value : this.number,
        userId: userId ?? this.userId,
        date: date ?? this.date,
        customerId: customerId ?? this.customerId,
        customerName:
            customerName.present ? customerName.value : this.customerName,
        paymentTypeId:
            paymentTypeId.present ? paymentTypeId.value : this.paymentTypeId,
        paymentTerms:
            paymentTerms.present ? paymentTerms.value : this.paymentTerms,
        quantityProducts: quantityProducts.present
            ? quantityProducts.value
            : this.quantityProducts,
        totalProducts:
            totalProducts.present ? totalProducts.value : this.totalProducts,
        freight: freight.present ? freight.value : this.freight,
        discountPercent: discountPercent.present
            ? discountPercent.value
            : this.discountPercent,
        discountValue:
            discountValue.present ? discountValue.value : this.discountValue,
        total: total.present ? total.value : this.total,
        contact: contact.present ? contact.value : this.contact,
        validity: validity.present ? validity.value : this.validity,
        deliveryTime:
            deliveryTime.present ? deliveryTime.value : this.deliveryTime,
        salesmanId: salesmanId.present ? salesmanId.value : this.salesmanId,
        warehouseId: warehouseId.present ? warehouseId.value : this.warehouseId,
        status: status.present ? status.value : this.status,
        remoteId: remoteId.present ? remoteId.value : this.remoteId,
      );
  TbBudgetData copyWithCompanion(TbBudgetCompanion data) {
    return TbBudgetData(
      id: data.id.present ? data.id.value : this.id,
      orderId: data.orderId.present ? data.orderId.value : this.orderId,
      number: data.number.present ? data.number.value : this.number,
      userId: data.userId.present ? data.userId.value : this.userId,
      date: data.date.present ? data.date.value : this.date,
      customerId:
          data.customerId.present ? data.customerId.value : this.customerId,
      customerName: data.customerName.present
          ? data.customerName.value
          : this.customerName,
      paymentTypeId: data.paymentTypeId.present
          ? data.paymentTypeId.value
          : this.paymentTypeId,
      paymentTerms: data.paymentTerms.present
          ? data.paymentTerms.value
          : this.paymentTerms,
      quantityProducts: data.quantityProducts.present
          ? data.quantityProducts.value
          : this.quantityProducts,
      totalProducts: data.totalProducts.present
          ? data.totalProducts.value
          : this.totalProducts,
      freight: data.freight.present ? data.freight.value : this.freight,
      discountPercent: data.discountPercent.present
          ? data.discountPercent.value
          : this.discountPercent,
      discountValue: data.discountValue.present
          ? data.discountValue.value
          : this.discountValue,
      total: data.total.present ? data.total.value : this.total,
      contact: data.contact.present ? data.contact.value : this.contact,
      validity: data.validity.present ? data.validity.value : this.validity,
      deliveryTime: data.deliveryTime.present
          ? data.deliveryTime.value
          : this.deliveryTime,
      salesmanId:
          data.salesmanId.present ? data.salesmanId.value : this.salesmanId,
      warehouseId:
          data.warehouseId.present ? data.warehouseId.value : this.warehouseId,
      status: data.status.present ? data.status.value : this.status,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TbBudgetData(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('number: $number, ')
          ..write('userId: $userId, ')
          ..write('date: $date, ')
          ..write('customerId: $customerId, ')
          ..write('customerName: $customerName, ')
          ..write('paymentTypeId: $paymentTypeId, ')
          ..write('paymentTerms: $paymentTerms, ')
          ..write('quantityProducts: $quantityProducts, ')
          ..write('totalProducts: $totalProducts, ')
          ..write('freight: $freight, ')
          ..write('discountPercent: $discountPercent, ')
          ..write('discountValue: $discountValue, ')
          ..write('total: $total, ')
          ..write('contact: $contact, ')
          ..write('validity: $validity, ')
          ..write('deliveryTime: $deliveryTime, ')
          ..write('salesmanId: $salesmanId, ')
          ..write('warehouseId: $warehouseId, ')
          ..write('status: $status, ')
          ..write('remoteId: $remoteId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        orderId,
        number,
        userId,
        date,
        customerId,
        customerName,
        paymentTypeId,
        paymentTerms,
        quantityProducts,
        totalProducts,
        freight,
        discountPercent,
        discountValue,
        total,
        contact,
        validity,
        deliveryTime,
        salesmanId,
        warehouseId,
        status,
        remoteId
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TbBudgetData &&
          other.id == this.id &&
          other.orderId == this.orderId &&
          other.number == this.number &&
          other.userId == this.userId &&
          other.date == this.date &&
          other.customerId == this.customerId &&
          other.customerName == this.customerName &&
          other.paymentTypeId == this.paymentTypeId &&
          other.paymentTerms == this.paymentTerms &&
          other.quantityProducts == this.quantityProducts &&
          other.totalProducts == this.totalProducts &&
          other.freight == this.freight &&
          other.discountPercent == this.discountPercent &&
          other.discountValue == this.discountValue &&
          other.total == this.total &&
          other.contact == this.contact &&
          other.validity == this.validity &&
          other.deliveryTime == this.deliveryTime &&
          other.salesmanId == this.salesmanId &&
          other.warehouseId == this.warehouseId &&
          other.status == this.status &&
          other.remoteId == this.remoteId);
}

class TbBudgetCompanion extends UpdateCompanion<TbBudgetData> {
  final Value<int> id;
  final Value<int> orderId;
  final Value<String?> number;
  final Value<int> userId;
  final Value<DateTime> date;
  final Value<int> customerId;
  final Value<String?> customerName;
  final Value<int?> paymentTypeId;
  final Value<String?> paymentTerms;
  final Value<double?> quantityProducts;
  final Value<double?> totalProducts;
  final Value<double?> freight;
  final Value<double?> discountPercent;
  final Value<double?> discountValue;
  final Value<double?> total;
  final Value<String?> contact;
  final Value<String?> validity;
  final Value<String?> deliveryTime;
  final Value<int?> salesmanId;
  final Value<int?> warehouseId;
  final Value<String?> status;
  final Value<int?> remoteId;
  const TbBudgetCompanion({
    this.id = const Value.absent(),
    this.orderId = const Value.absent(),
    this.number = const Value.absent(),
    this.userId = const Value.absent(),
    this.date = const Value.absent(),
    this.customerId = const Value.absent(),
    this.customerName = const Value.absent(),
    this.paymentTypeId = const Value.absent(),
    this.paymentTerms = const Value.absent(),
    this.quantityProducts = const Value.absent(),
    this.totalProducts = const Value.absent(),
    this.freight = const Value.absent(),
    this.discountPercent = const Value.absent(),
    this.discountValue = const Value.absent(),
    this.total = const Value.absent(),
    this.contact = const Value.absent(),
    this.validity = const Value.absent(),
    this.deliveryTime = const Value.absent(),
    this.salesmanId = const Value.absent(),
    this.warehouseId = const Value.absent(),
    this.status = const Value.absent(),
    this.remoteId = const Value.absent(),
  });
  TbBudgetCompanion.insert({
    this.id = const Value.absent(),
    this.orderId = const Value.absent(),
    this.number = const Value.absent(),
    this.userId = const Value.absent(),
    required DateTime date,
    this.customerId = const Value.absent(),
    this.customerName = const Value.absent(),
    this.paymentTypeId = const Value.absent(),
    this.paymentTerms = const Value.absent(),
    this.quantityProducts = const Value.absent(),
    this.totalProducts = const Value.absent(),
    this.freight = const Value.absent(),
    this.discountPercent = const Value.absent(),
    this.discountValue = const Value.absent(),
    this.total = const Value.absent(),
    this.contact = const Value.absent(),
    this.validity = const Value.absent(),
    this.deliveryTime = const Value.absent(),
    this.salesmanId = const Value.absent(),
    this.warehouseId = const Value.absent(),
    this.status = const Value.absent(),
    this.remoteId = const Value.absent(),
  }) : date = Value(date);
  static Insertable<TbBudgetData> custom({
    Expression<int>? id,
    Expression<int>? orderId,
    Expression<String>? number,
    Expression<int>? userId,
    Expression<DateTime>? date,
    Expression<int>? customerId,
    Expression<String>? customerName,
    Expression<int>? paymentTypeId,
    Expression<String>? paymentTerms,
    Expression<double>? quantityProducts,
    Expression<double>? totalProducts,
    Expression<double>? freight,
    Expression<double>? discountPercent,
    Expression<double>? discountValue,
    Expression<double>? total,
    Expression<String>? contact,
    Expression<String>? validity,
    Expression<String>? deliveryTime,
    Expression<int>? salesmanId,
    Expression<int>? warehouseId,
    Expression<String>? status,
    Expression<int>? remoteId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'CTC_CODIGO': id,
      if (orderId != null) 'CTC_CODPED': orderId,
      if (number != null) 'CTC_NUMERO': number,
      if (userId != null) 'CTC_CODUSU': userId,
      if (date != null) 'CTC_DATA': date,
      if (customerId != null) 'CTC_CODEMP': customerId,
      if (customerName != null) 'CTC_FANTASIA': customerName,
      if (paymentTypeId != null) 'CTC_CODFPG': paymentTypeId,
      if (paymentTerms != null) 'CTC_PRAZO': paymentTerms,
      if (quantityProducts != null) 'CTC_QT_PRODUTO': quantityProducts,
      if (totalProducts != null) 'CTC_VL_PRODUTO': totalProducts,
      if (freight != null) 'CTC_VL_FRETE': freight,
      if (discountPercent != null) 'CTC_ALIQ_DESCONTO': discountPercent,
      if (discountValue != null) 'CTC_VL_DESCONTO': discountValue,
      if (total != null) 'CTC_VL_COTACAO': total,
      if (contact != null) 'CTC_CONTATO': contact,
      if (validity != null) 'CTC_VALIDADE': validity,
      if (deliveryTime != null) 'CTC_PRZ_ENTREGA': deliveryTime,
      if (salesmanId != null) 'CTC_CODVDO': salesmanId,
      if (warehouseId != null) 'CTC_CODMHA': warehouseId,
      if (status != null) 'CTC_STATUS': status,
      if (remoteId != null) 'CTC_REMOTE_ID': remoteId,
    });
  }

  TbBudgetCompanion copyWith(
      {Value<int>? id,
      Value<int>? orderId,
      Value<String?>? number,
      Value<int>? userId,
      Value<DateTime>? date,
      Value<int>? customerId,
      Value<String?>? customerName,
      Value<int?>? paymentTypeId,
      Value<String?>? paymentTerms,
      Value<double?>? quantityProducts,
      Value<double?>? totalProducts,
      Value<double?>? freight,
      Value<double?>? discountPercent,
      Value<double?>? discountValue,
      Value<double?>? total,
      Value<String?>? contact,
      Value<String?>? validity,
      Value<String?>? deliveryTime,
      Value<int?>? salesmanId,
      Value<int?>? warehouseId,
      Value<String?>? status,
      Value<int?>? remoteId}) {
    return TbBudgetCompanion(
      id: id ?? this.id,
      orderId: orderId ?? this.orderId,
      number: number ?? this.number,
      userId: userId ?? this.userId,
      date: date ?? this.date,
      customerId: customerId ?? this.customerId,
      customerName: customerName ?? this.customerName,
      paymentTypeId: paymentTypeId ?? this.paymentTypeId,
      paymentTerms: paymentTerms ?? this.paymentTerms,
      quantityProducts: quantityProducts ?? this.quantityProducts,
      totalProducts: totalProducts ?? this.totalProducts,
      freight: freight ?? this.freight,
      discountPercent: discountPercent ?? this.discountPercent,
      discountValue: discountValue ?? this.discountValue,
      total: total ?? this.total,
      contact: contact ?? this.contact,
      validity: validity ?? this.validity,
      deliveryTime: deliveryTime ?? this.deliveryTime,
      salesmanId: salesmanId ?? this.salesmanId,
      warehouseId: warehouseId ?? this.warehouseId,
      status: status ?? this.status,
      remoteId: remoteId ?? this.remoteId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['CTC_CODIGO'] = Variable<int>(id.value);
    }
    if (orderId.present) {
      map['CTC_CODPED'] = Variable<int>(orderId.value);
    }
    if (number.present) {
      map['CTC_NUMERO'] = Variable<String>(number.value);
    }
    if (userId.present) {
      map['CTC_CODUSU'] = Variable<int>(userId.value);
    }
    if (date.present) {
      map['CTC_DATA'] = Variable<DateTime>(date.value);
    }
    if (customerId.present) {
      map['CTC_CODEMP'] = Variable<int>(customerId.value);
    }
    if (customerName.present) {
      map['CTC_FANTASIA'] = Variable<String>(customerName.value);
    }
    if (paymentTypeId.present) {
      map['CTC_CODFPG'] = Variable<int>(paymentTypeId.value);
    }
    if (paymentTerms.present) {
      map['CTC_PRAZO'] = Variable<String>(paymentTerms.value);
    }
    if (quantityProducts.present) {
      map['CTC_QT_PRODUTO'] = Variable<double>(quantityProducts.value);
    }
    if (totalProducts.present) {
      map['CTC_VL_PRODUTO'] = Variable<double>(totalProducts.value);
    }
    if (freight.present) {
      map['CTC_VL_FRETE'] = Variable<double>(freight.value);
    }
    if (discountPercent.present) {
      map['CTC_ALIQ_DESCONTO'] = Variable<double>(discountPercent.value);
    }
    if (discountValue.present) {
      map['CTC_VL_DESCONTO'] = Variable<double>(discountValue.value);
    }
    if (total.present) {
      map['CTC_VL_COTACAO'] = Variable<double>(total.value);
    }
    if (contact.present) {
      map['CTC_CONTATO'] = Variable<String>(contact.value);
    }
    if (validity.present) {
      map['CTC_VALIDADE'] = Variable<String>(validity.value);
    }
    if (deliveryTime.present) {
      map['CTC_PRZ_ENTREGA'] = Variable<String>(deliveryTime.value);
    }
    if (salesmanId.present) {
      map['CTC_CODVDO'] = Variable<int>(salesmanId.value);
    }
    if (warehouseId.present) {
      map['CTC_CODMHA'] = Variable<int>(warehouseId.value);
    }
    if (status.present) {
      map['CTC_STATUS'] = Variable<String>(status.value);
    }
    if (remoteId.present) {
      map['CTC_REMOTE_ID'] = Variable<int>(remoteId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TbBudgetCompanion(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('number: $number, ')
          ..write('userId: $userId, ')
          ..write('date: $date, ')
          ..write('customerId: $customerId, ')
          ..write('customerName: $customerName, ')
          ..write('paymentTypeId: $paymentTypeId, ')
          ..write('paymentTerms: $paymentTerms, ')
          ..write('quantityProducts: $quantityProducts, ')
          ..write('totalProducts: $totalProducts, ')
          ..write('freight: $freight, ')
          ..write('discountPercent: $discountPercent, ')
          ..write('discountValue: $discountValue, ')
          ..write('total: $total, ')
          ..write('contact: $contact, ')
          ..write('validity: $validity, ')
          ..write('deliveryTime: $deliveryTime, ')
          ..write('salesmanId: $salesmanId, ')
          ..write('warehouseId: $warehouseId, ')
          ..write('status: $status, ')
          ..write('remoteId: $remoteId')
          ..write(')'))
        .toString();
  }
}

class $TbBudgetItemTable extends TbBudgetItem
    with TableInfo<$TbBudgetItemTable, TbBudgetItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TbBudgetItemTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'ICT_CODIGO', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _budgetIdMeta =
      const VerificationMeta('budgetId');
  @override
  late final GeneratedColumn<int> budgetId = GeneratedColumn<int>(
      'ICT_CODCTC', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'ICT_TIPO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
      'ICT_CODVCL', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'ICT_DESCRICAO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'ICT_QTDE', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _unitPriceMeta =
      const VerificationMeta('unitPrice');
  @override
  late final GeneratedColumn<double> unitPrice = GeneratedColumn<double>(
      'ICT_VL_UNIT', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountValueMeta =
      const VerificationMeta('discountValue');
  @override
  late final GeneratedColumn<double> discountValue = GeneratedColumn<double>(
      'ICT_VL_DESC', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountPercentMeta =
      const VerificationMeta('discountPercent');
  @override
  late final GeneratedColumn<double> discountPercent = GeneratedColumn<double>(
      'ICT_AQ_DESC', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _stockIdMeta =
      const VerificationMeta('stockId');
  @override
  late final GeneratedColumn<int> stockId = GeneratedColumn<int>(
      'ICT_CODEST', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _priceListIdMeta =
      const VerificationMeta('priceListId');
  @override
  late final GeneratedColumn<int> priceListId = GeneratedColumn<int>(
      'ICT_CODTPR', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _costValueMeta =
      const VerificationMeta('costValue');
  @override
  late final GeneratedColumn<double> costValue = GeneratedColumn<double>(
      'ICT_VL_CUSTO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _sequenceMeta =
      const VerificationMeta('sequence');
  @override
  late final GeneratedColumn<int> sequence = GeneratedColumn<int>(
      'ICT_SEQUENCIA', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        budgetId,
        type,
        productId,
        description,
        quantity,
        unitPrice,
        discountValue,
        discountPercent,
        stockId,
        priceListId,
        costValue,
        sequence
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'TB_ITENS_CTC';
  @override
  VerificationContext validateIntegrity(Insertable<TbBudgetItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ICT_CODIGO')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['ICT_CODIGO']!, _idMeta));
    }
    if (data.containsKey('ICT_CODCTC')) {
      context.handle(_budgetIdMeta,
          budgetId.isAcceptableOrUnknown(data['ICT_CODCTC']!, _budgetIdMeta));
    }
    if (data.containsKey('ICT_TIPO')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['ICT_TIPO']!, _typeMeta));
    }
    if (data.containsKey('ICT_CODVCL')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['ICT_CODVCL']!, _productIdMeta));
    }
    if (data.containsKey('ICT_DESCRICAO')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['ICT_DESCRICAO']!, _descriptionMeta));
    }
    if (data.containsKey('ICT_QTDE')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['ICT_QTDE']!, _quantityMeta));
    }
    if (data.containsKey('ICT_VL_UNIT')) {
      context.handle(
          _unitPriceMeta,
          unitPrice.isAcceptableOrUnknown(
              data['ICT_VL_UNIT']!, _unitPriceMeta));
    }
    if (data.containsKey('ICT_VL_DESC')) {
      context.handle(
          _discountValueMeta,
          discountValue.isAcceptableOrUnknown(
              data['ICT_VL_DESC']!, _discountValueMeta));
    }
    if (data.containsKey('ICT_AQ_DESC')) {
      context.handle(
          _discountPercentMeta,
          discountPercent.isAcceptableOrUnknown(
              data['ICT_AQ_DESC']!, _discountPercentMeta));
    }
    if (data.containsKey('ICT_CODEST')) {
      context.handle(_stockIdMeta,
          stockId.isAcceptableOrUnknown(data['ICT_CODEST']!, _stockIdMeta));
    }
    if (data.containsKey('ICT_CODTPR')) {
      context.handle(
          _priceListIdMeta,
          priceListId.isAcceptableOrUnknown(
              data['ICT_CODTPR']!, _priceListIdMeta));
    }
    if (data.containsKey('ICT_VL_CUSTO')) {
      context.handle(
          _costValueMeta,
          costValue.isAcceptableOrUnknown(
              data['ICT_VL_CUSTO']!, _costValueMeta));
    }
    if (data.containsKey('ICT_SEQUENCIA')) {
      context.handle(
          _sequenceMeta,
          sequence.isAcceptableOrUnknown(
              data['ICT_SEQUENCIA']!, _sequenceMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TbBudgetItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TbBudgetItemData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ICT_CODIGO'])!,
      budgetId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ICT_CODCTC']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ICT_TIPO']),
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ICT_CODVCL']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ICT_DESCRICAO']),
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}ICT_QTDE']),
      unitPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}ICT_VL_UNIT']),
      discountValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}ICT_VL_DESC']),
      discountPercent: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}ICT_AQ_DESC']),
      stockId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ICT_CODEST']),
      priceListId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ICT_CODTPR']),
      costValue: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}ICT_VL_CUSTO']),
      sequence: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ICT_SEQUENCIA']),
    );
  }

  @override
  $TbBudgetItemTable createAlias(String alias) {
    return $TbBudgetItemTable(attachedDatabase, alias);
  }
}

class TbBudgetItemData extends DataClass
    implements Insertable<TbBudgetItemData> {
  final int id;
  final int? budgetId;
  final String? type;
  final int? productId;
  final String? description;
  final double? quantity;
  final double? unitPrice;
  final double? discountValue;
  final double? discountPercent;
  final int? stockId;
  final int? priceListId;
  final double? costValue;
  final int? sequence;
  const TbBudgetItemData(
      {required this.id,
      this.budgetId,
      this.type,
      this.productId,
      this.description,
      this.quantity,
      this.unitPrice,
      this.discountValue,
      this.discountPercent,
      this.stockId,
      this.priceListId,
      this.costValue,
      this.sequence});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ICT_CODIGO'] = Variable<int>(id);
    if (!nullToAbsent || budgetId != null) {
      map['ICT_CODCTC'] = Variable<int>(budgetId);
    }
    if (!nullToAbsent || type != null) {
      map['ICT_TIPO'] = Variable<String>(type);
    }
    if (!nullToAbsent || productId != null) {
      map['ICT_CODVCL'] = Variable<int>(productId);
    }
    if (!nullToAbsent || description != null) {
      map['ICT_DESCRICAO'] = Variable<String>(description);
    }
    if (!nullToAbsent || quantity != null) {
      map['ICT_QTDE'] = Variable<double>(quantity);
    }
    if (!nullToAbsent || unitPrice != null) {
      map['ICT_VL_UNIT'] = Variable<double>(unitPrice);
    }
    if (!nullToAbsent || discountValue != null) {
      map['ICT_VL_DESC'] = Variable<double>(discountValue);
    }
    if (!nullToAbsent || discountPercent != null) {
      map['ICT_AQ_DESC'] = Variable<double>(discountPercent);
    }
    if (!nullToAbsent || stockId != null) {
      map['ICT_CODEST'] = Variable<int>(stockId);
    }
    if (!nullToAbsent || priceListId != null) {
      map['ICT_CODTPR'] = Variable<int>(priceListId);
    }
    if (!nullToAbsent || costValue != null) {
      map['ICT_VL_CUSTO'] = Variable<double>(costValue);
    }
    if (!nullToAbsent || sequence != null) {
      map['ICT_SEQUENCIA'] = Variable<int>(sequence);
    }
    return map;
  }

  TbBudgetItemCompanion toCompanion(bool nullToAbsent) {
    return TbBudgetItemCompanion(
      id: Value(id),
      budgetId: budgetId == null && nullToAbsent
          ? const Value.absent()
          : Value(budgetId),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      unitPrice: unitPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(unitPrice),
      discountValue: discountValue == null && nullToAbsent
          ? const Value.absent()
          : Value(discountValue),
      discountPercent: discountPercent == null && nullToAbsent
          ? const Value.absent()
          : Value(discountPercent),
      stockId: stockId == null && nullToAbsent
          ? const Value.absent()
          : Value(stockId),
      priceListId: priceListId == null && nullToAbsent
          ? const Value.absent()
          : Value(priceListId),
      costValue: costValue == null && nullToAbsent
          ? const Value.absent()
          : Value(costValue),
      sequence: sequence == null && nullToAbsent
          ? const Value.absent()
          : Value(sequence),
    );
  }

  factory TbBudgetItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TbBudgetItemData(
      id: serializer.fromJson<int>(json['id']),
      budgetId: serializer.fromJson<int?>(json['budgetId']),
      type: serializer.fromJson<String?>(json['type']),
      productId: serializer.fromJson<int?>(json['productId']),
      description: serializer.fromJson<String?>(json['description']),
      quantity: serializer.fromJson<double?>(json['quantity']),
      unitPrice: serializer.fromJson<double?>(json['unitPrice']),
      discountValue: serializer.fromJson<double?>(json['discountValue']),
      discountPercent: serializer.fromJson<double?>(json['discountPercent']),
      stockId: serializer.fromJson<int?>(json['stockId']),
      priceListId: serializer.fromJson<int?>(json['priceListId']),
      costValue: serializer.fromJson<double?>(json['costValue']),
      sequence: serializer.fromJson<int?>(json['sequence']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'budgetId': serializer.toJson<int?>(budgetId),
      'type': serializer.toJson<String?>(type),
      'productId': serializer.toJson<int?>(productId),
      'description': serializer.toJson<String?>(description),
      'quantity': serializer.toJson<double?>(quantity),
      'unitPrice': serializer.toJson<double?>(unitPrice),
      'discountValue': serializer.toJson<double?>(discountValue),
      'discountPercent': serializer.toJson<double?>(discountPercent),
      'stockId': serializer.toJson<int?>(stockId),
      'priceListId': serializer.toJson<int?>(priceListId),
      'costValue': serializer.toJson<double?>(costValue),
      'sequence': serializer.toJson<int?>(sequence),
    };
  }

  TbBudgetItemData copyWith(
          {int? id,
          Value<int?> budgetId = const Value.absent(),
          Value<String?> type = const Value.absent(),
          Value<int?> productId = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<double?> quantity = const Value.absent(),
          Value<double?> unitPrice = const Value.absent(),
          Value<double?> discountValue = const Value.absent(),
          Value<double?> discountPercent = const Value.absent(),
          Value<int?> stockId = const Value.absent(),
          Value<int?> priceListId = const Value.absent(),
          Value<double?> costValue = const Value.absent(),
          Value<int?> sequence = const Value.absent()}) =>
      TbBudgetItemData(
        id: id ?? this.id,
        budgetId: budgetId.present ? budgetId.value : this.budgetId,
        type: type.present ? type.value : this.type,
        productId: productId.present ? productId.value : this.productId,
        description: description.present ? description.value : this.description,
        quantity: quantity.present ? quantity.value : this.quantity,
        unitPrice: unitPrice.present ? unitPrice.value : this.unitPrice,
        discountValue:
            discountValue.present ? discountValue.value : this.discountValue,
        discountPercent: discountPercent.present
            ? discountPercent.value
            : this.discountPercent,
        stockId: stockId.present ? stockId.value : this.stockId,
        priceListId: priceListId.present ? priceListId.value : this.priceListId,
        costValue: costValue.present ? costValue.value : this.costValue,
        sequence: sequence.present ? sequence.value : this.sequence,
      );
  TbBudgetItemData copyWithCompanion(TbBudgetItemCompanion data) {
    return TbBudgetItemData(
      id: data.id.present ? data.id.value : this.id,
      budgetId: data.budgetId.present ? data.budgetId.value : this.budgetId,
      type: data.type.present ? data.type.value : this.type,
      productId: data.productId.present ? data.productId.value : this.productId,
      description:
          data.description.present ? data.description.value : this.description,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      unitPrice: data.unitPrice.present ? data.unitPrice.value : this.unitPrice,
      discountValue: data.discountValue.present
          ? data.discountValue.value
          : this.discountValue,
      discountPercent: data.discountPercent.present
          ? data.discountPercent.value
          : this.discountPercent,
      stockId: data.stockId.present ? data.stockId.value : this.stockId,
      priceListId:
          data.priceListId.present ? data.priceListId.value : this.priceListId,
      costValue: data.costValue.present ? data.costValue.value : this.costValue,
      sequence: data.sequence.present ? data.sequence.value : this.sequence,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TbBudgetItemData(')
          ..write('id: $id, ')
          ..write('budgetId: $budgetId, ')
          ..write('type: $type, ')
          ..write('productId: $productId, ')
          ..write('description: $description, ')
          ..write('quantity: $quantity, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('discountValue: $discountValue, ')
          ..write('discountPercent: $discountPercent, ')
          ..write('stockId: $stockId, ')
          ..write('priceListId: $priceListId, ')
          ..write('costValue: $costValue, ')
          ..write('sequence: $sequence')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      budgetId,
      type,
      productId,
      description,
      quantity,
      unitPrice,
      discountValue,
      discountPercent,
      stockId,
      priceListId,
      costValue,
      sequence);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TbBudgetItemData &&
          other.id == this.id &&
          other.budgetId == this.budgetId &&
          other.type == this.type &&
          other.productId == this.productId &&
          other.description == this.description &&
          other.quantity == this.quantity &&
          other.unitPrice == this.unitPrice &&
          other.discountValue == this.discountValue &&
          other.discountPercent == this.discountPercent &&
          other.stockId == this.stockId &&
          other.priceListId == this.priceListId &&
          other.costValue == this.costValue &&
          other.sequence == this.sequence);
}

class TbBudgetItemCompanion extends UpdateCompanion<TbBudgetItemData> {
  final Value<int> id;
  final Value<int?> budgetId;
  final Value<String?> type;
  final Value<int?> productId;
  final Value<String?> description;
  final Value<double?> quantity;
  final Value<double?> unitPrice;
  final Value<double?> discountValue;
  final Value<double?> discountPercent;
  final Value<int?> stockId;
  final Value<int?> priceListId;
  final Value<double?> costValue;
  final Value<int?> sequence;
  const TbBudgetItemCompanion({
    this.id = const Value.absent(),
    this.budgetId = const Value.absent(),
    this.type = const Value.absent(),
    this.productId = const Value.absent(),
    this.description = const Value.absent(),
    this.quantity = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.discountValue = const Value.absent(),
    this.discountPercent = const Value.absent(),
    this.stockId = const Value.absent(),
    this.priceListId = const Value.absent(),
    this.costValue = const Value.absent(),
    this.sequence = const Value.absent(),
  });
  TbBudgetItemCompanion.insert({
    this.id = const Value.absent(),
    this.budgetId = const Value.absent(),
    this.type = const Value.absent(),
    this.productId = const Value.absent(),
    this.description = const Value.absent(),
    this.quantity = const Value.absent(),
    this.unitPrice = const Value.absent(),
    this.discountValue = const Value.absent(),
    this.discountPercent = const Value.absent(),
    this.stockId = const Value.absent(),
    this.priceListId = const Value.absent(),
    this.costValue = const Value.absent(),
    this.sequence = const Value.absent(),
  });
  static Insertable<TbBudgetItemData> custom({
    Expression<int>? id,
    Expression<int>? budgetId,
    Expression<String>? type,
    Expression<int>? productId,
    Expression<String>? description,
    Expression<double>? quantity,
    Expression<double>? unitPrice,
    Expression<double>? discountValue,
    Expression<double>? discountPercent,
    Expression<int>? stockId,
    Expression<int>? priceListId,
    Expression<double>? costValue,
    Expression<int>? sequence,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ICT_CODIGO': id,
      if (budgetId != null) 'ICT_CODCTC': budgetId,
      if (type != null) 'ICT_TIPO': type,
      if (productId != null) 'ICT_CODVCL': productId,
      if (description != null) 'ICT_DESCRICAO': description,
      if (quantity != null) 'ICT_QTDE': quantity,
      if (unitPrice != null) 'ICT_VL_UNIT': unitPrice,
      if (discountValue != null) 'ICT_VL_DESC': discountValue,
      if (discountPercent != null) 'ICT_AQ_DESC': discountPercent,
      if (stockId != null) 'ICT_CODEST': stockId,
      if (priceListId != null) 'ICT_CODTPR': priceListId,
      if (costValue != null) 'ICT_VL_CUSTO': costValue,
      if (sequence != null) 'ICT_SEQUENCIA': sequence,
    });
  }

  TbBudgetItemCompanion copyWith(
      {Value<int>? id,
      Value<int?>? budgetId,
      Value<String?>? type,
      Value<int?>? productId,
      Value<String?>? description,
      Value<double?>? quantity,
      Value<double?>? unitPrice,
      Value<double?>? discountValue,
      Value<double?>? discountPercent,
      Value<int?>? stockId,
      Value<int?>? priceListId,
      Value<double?>? costValue,
      Value<int?>? sequence}) {
    return TbBudgetItemCompanion(
      id: id ?? this.id,
      budgetId: budgetId ?? this.budgetId,
      type: type ?? this.type,
      productId: productId ?? this.productId,
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      discountValue: discountValue ?? this.discountValue,
      discountPercent: discountPercent ?? this.discountPercent,
      stockId: stockId ?? this.stockId,
      priceListId: priceListId ?? this.priceListId,
      costValue: costValue ?? this.costValue,
      sequence: sequence ?? this.sequence,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ICT_CODIGO'] = Variable<int>(id.value);
    }
    if (budgetId.present) {
      map['ICT_CODCTC'] = Variable<int>(budgetId.value);
    }
    if (type.present) {
      map['ICT_TIPO'] = Variable<String>(type.value);
    }
    if (productId.present) {
      map['ICT_CODVCL'] = Variable<int>(productId.value);
    }
    if (description.present) {
      map['ICT_DESCRICAO'] = Variable<String>(description.value);
    }
    if (quantity.present) {
      map['ICT_QTDE'] = Variable<double>(quantity.value);
    }
    if (unitPrice.present) {
      map['ICT_VL_UNIT'] = Variable<double>(unitPrice.value);
    }
    if (discountValue.present) {
      map['ICT_VL_DESC'] = Variable<double>(discountValue.value);
    }
    if (discountPercent.present) {
      map['ICT_AQ_DESC'] = Variable<double>(discountPercent.value);
    }
    if (stockId.present) {
      map['ICT_CODEST'] = Variable<int>(stockId.value);
    }
    if (priceListId.present) {
      map['ICT_CODTPR'] = Variable<int>(priceListId.value);
    }
    if (costValue.present) {
      map['ICT_VL_CUSTO'] = Variable<double>(costValue.value);
    }
    if (sequence.present) {
      map['ICT_SEQUENCIA'] = Variable<int>(sequence.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TbBudgetItemCompanion(')
          ..write('id: $id, ')
          ..write('budgetId: $budgetId, ')
          ..write('type: $type, ')
          ..write('productId: $productId, ')
          ..write('description: $description, ')
          ..write('quantity: $quantity, ')
          ..write('unitPrice: $unitPrice, ')
          ..write('discountValue: $discountValue, ')
          ..write('discountPercent: $discountPercent, ')
          ..write('stockId: $stockId, ')
          ..write('priceListId: $priceListId, ')
          ..write('costValue: $costValue, ')
          ..write('sequence: $sequence')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TbBudgetTable tbBudget = $TbBudgetTable(this);
  late final $TbBudgetItemTable tbBudgetItem = $TbBudgetItemTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tbBudget, tbBudgetItem];
}

typedef $$TbBudgetTableCreateCompanionBuilder = TbBudgetCompanion Function({
  Value<int> id,
  Value<int> orderId,
  Value<String?> number,
  Value<int> userId,
  required DateTime date,
  Value<int> customerId,
  Value<String?> customerName,
  Value<int?> paymentTypeId,
  Value<String?> paymentTerms,
  Value<double?> quantityProducts,
  Value<double?> totalProducts,
  Value<double?> freight,
  Value<double?> discountPercent,
  Value<double?> discountValue,
  Value<double?> total,
  Value<String?> contact,
  Value<String?> validity,
  Value<String?> deliveryTime,
  Value<int?> salesmanId,
  Value<int?> warehouseId,
  Value<String?> status,
  Value<int?> remoteId,
});
typedef $$TbBudgetTableUpdateCompanionBuilder = TbBudgetCompanion Function({
  Value<int> id,
  Value<int> orderId,
  Value<String?> number,
  Value<int> userId,
  Value<DateTime> date,
  Value<int> customerId,
  Value<String?> customerName,
  Value<int?> paymentTypeId,
  Value<String?> paymentTerms,
  Value<double?> quantityProducts,
  Value<double?> totalProducts,
  Value<double?> freight,
  Value<double?> discountPercent,
  Value<double?> discountValue,
  Value<double?> total,
  Value<String?> contact,
  Value<String?> validity,
  Value<String?> deliveryTime,
  Value<int?> salesmanId,
  Value<int?> warehouseId,
  Value<String?> status,
  Value<int?> remoteId,
});

class $$TbBudgetTableFilterComposer
    extends Composer<_$AppDatabase, $TbBudgetTable> {
  $$TbBudgetTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orderId => $composableBuilder(
      column: $table.orderId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customerName => $composableBuilder(
      column: $table.customerName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paymentTypeId => $composableBuilder(
      column: $table.paymentTypeId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get paymentTerms => $composableBuilder(
      column: $table.paymentTerms, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get quantityProducts => $composableBuilder(
      column: $table.quantityProducts,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalProducts => $composableBuilder(
      column: $table.totalProducts, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get freight => $composableBuilder(
      column: $table.freight, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get discountPercent => $composableBuilder(
      column: $table.discountPercent,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get discountValue => $composableBuilder(
      column: $table.discountValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get total => $composableBuilder(
      column: $table.total, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contact => $composableBuilder(
      column: $table.contact, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get validity => $composableBuilder(
      column: $table.validity, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get deliveryTime => $composableBuilder(
      column: $table.deliveryTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get salesmanId => $composableBuilder(
      column: $table.salesmanId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get warehouseId => $composableBuilder(
      column: $table.warehouseId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnFilters(column));
}

class $$TbBudgetTableOrderingComposer
    extends Composer<_$AppDatabase, $TbBudgetTable> {
  $$TbBudgetTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orderId => $composableBuilder(
      column: $table.orderId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customerName => $composableBuilder(
      column: $table.customerName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paymentTypeId => $composableBuilder(
      column: $table.paymentTypeId,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get paymentTerms => $composableBuilder(
      column: $table.paymentTerms,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get quantityProducts => $composableBuilder(
      column: $table.quantityProducts,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalProducts => $composableBuilder(
      column: $table.totalProducts,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get freight => $composableBuilder(
      column: $table.freight, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get discountPercent => $composableBuilder(
      column: $table.discountPercent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get discountValue => $composableBuilder(
      column: $table.discountValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get total => $composableBuilder(
      column: $table.total, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contact => $composableBuilder(
      column: $table.contact, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get validity => $composableBuilder(
      column: $table.validity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get deliveryTime => $composableBuilder(
      column: $table.deliveryTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get salesmanId => $composableBuilder(
      column: $table.salesmanId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get warehouseId => $composableBuilder(
      column: $table.warehouseId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get remoteId => $composableBuilder(
      column: $table.remoteId, builder: (column) => ColumnOrderings(column));
}

class $$TbBudgetTableAnnotationComposer
    extends Composer<_$AppDatabase, $TbBudgetTable> {
  $$TbBudgetTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get orderId =>
      $composableBuilder(column: $table.orderId, builder: (column) => column);

  GeneratedColumn<String> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<int> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => column);

  GeneratedColumn<String> get customerName => $composableBuilder(
      column: $table.customerName, builder: (column) => column);

  GeneratedColumn<int> get paymentTypeId => $composableBuilder(
      column: $table.paymentTypeId, builder: (column) => column);

  GeneratedColumn<String> get paymentTerms => $composableBuilder(
      column: $table.paymentTerms, builder: (column) => column);

  GeneratedColumn<double> get quantityProducts => $composableBuilder(
      column: $table.quantityProducts, builder: (column) => column);

  GeneratedColumn<double> get totalProducts => $composableBuilder(
      column: $table.totalProducts, builder: (column) => column);

  GeneratedColumn<double> get freight =>
      $composableBuilder(column: $table.freight, builder: (column) => column);

  GeneratedColumn<double> get discountPercent => $composableBuilder(
      column: $table.discountPercent, builder: (column) => column);

  GeneratedColumn<double> get discountValue => $composableBuilder(
      column: $table.discountValue, builder: (column) => column);

  GeneratedColumn<double> get total =>
      $composableBuilder(column: $table.total, builder: (column) => column);

  GeneratedColumn<String> get contact =>
      $composableBuilder(column: $table.contact, builder: (column) => column);

  GeneratedColumn<String> get validity =>
      $composableBuilder(column: $table.validity, builder: (column) => column);

  GeneratedColumn<String> get deliveryTime => $composableBuilder(
      column: $table.deliveryTime, builder: (column) => column);

  GeneratedColumn<int> get salesmanId => $composableBuilder(
      column: $table.salesmanId, builder: (column) => column);

  GeneratedColumn<int> get warehouseId => $composableBuilder(
      column: $table.warehouseId, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get remoteId =>
      $composableBuilder(column: $table.remoteId, builder: (column) => column);
}

class $$TbBudgetTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TbBudgetTable,
    TbBudgetData,
    $$TbBudgetTableFilterComposer,
    $$TbBudgetTableOrderingComposer,
    $$TbBudgetTableAnnotationComposer,
    $$TbBudgetTableCreateCompanionBuilder,
    $$TbBudgetTableUpdateCompanionBuilder,
    (TbBudgetData, BaseReferences<_$AppDatabase, $TbBudgetTable, TbBudgetData>),
    TbBudgetData,
    PrefetchHooks Function()> {
  $$TbBudgetTableTableManager(_$AppDatabase db, $TbBudgetTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TbBudgetTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TbBudgetTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TbBudgetTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> orderId = const Value.absent(),
            Value<String?> number = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<int> customerId = const Value.absent(),
            Value<String?> customerName = const Value.absent(),
            Value<int?> paymentTypeId = const Value.absent(),
            Value<String?> paymentTerms = const Value.absent(),
            Value<double?> quantityProducts = const Value.absent(),
            Value<double?> totalProducts = const Value.absent(),
            Value<double?> freight = const Value.absent(),
            Value<double?> discountPercent = const Value.absent(),
            Value<double?> discountValue = const Value.absent(),
            Value<double?> total = const Value.absent(),
            Value<String?> contact = const Value.absent(),
            Value<String?> validity = const Value.absent(),
            Value<String?> deliveryTime = const Value.absent(),
            Value<int?> salesmanId = const Value.absent(),
            Value<int?> warehouseId = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<int?> remoteId = const Value.absent(),
          }) =>
              TbBudgetCompanion(
            id: id,
            orderId: orderId,
            number: number,
            userId: userId,
            date: date,
            customerId: customerId,
            customerName: customerName,
            paymentTypeId: paymentTypeId,
            paymentTerms: paymentTerms,
            quantityProducts: quantityProducts,
            totalProducts: totalProducts,
            freight: freight,
            discountPercent: discountPercent,
            discountValue: discountValue,
            total: total,
            contact: contact,
            validity: validity,
            deliveryTime: deliveryTime,
            salesmanId: salesmanId,
            warehouseId: warehouseId,
            status: status,
            remoteId: remoteId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> orderId = const Value.absent(),
            Value<String?> number = const Value.absent(),
            Value<int> userId = const Value.absent(),
            required DateTime date,
            Value<int> customerId = const Value.absent(),
            Value<String?> customerName = const Value.absent(),
            Value<int?> paymentTypeId = const Value.absent(),
            Value<String?> paymentTerms = const Value.absent(),
            Value<double?> quantityProducts = const Value.absent(),
            Value<double?> totalProducts = const Value.absent(),
            Value<double?> freight = const Value.absent(),
            Value<double?> discountPercent = const Value.absent(),
            Value<double?> discountValue = const Value.absent(),
            Value<double?> total = const Value.absent(),
            Value<String?> contact = const Value.absent(),
            Value<String?> validity = const Value.absent(),
            Value<String?> deliveryTime = const Value.absent(),
            Value<int?> salesmanId = const Value.absent(),
            Value<int?> warehouseId = const Value.absent(),
            Value<String?> status = const Value.absent(),
            Value<int?> remoteId = const Value.absent(),
          }) =>
              TbBudgetCompanion.insert(
            id: id,
            orderId: orderId,
            number: number,
            userId: userId,
            date: date,
            customerId: customerId,
            customerName: customerName,
            paymentTypeId: paymentTypeId,
            paymentTerms: paymentTerms,
            quantityProducts: quantityProducts,
            totalProducts: totalProducts,
            freight: freight,
            discountPercent: discountPercent,
            discountValue: discountValue,
            total: total,
            contact: contact,
            validity: validity,
            deliveryTime: deliveryTime,
            salesmanId: salesmanId,
            warehouseId: warehouseId,
            status: status,
            remoteId: remoteId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TbBudgetTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TbBudgetTable,
    TbBudgetData,
    $$TbBudgetTableFilterComposer,
    $$TbBudgetTableOrderingComposer,
    $$TbBudgetTableAnnotationComposer,
    $$TbBudgetTableCreateCompanionBuilder,
    $$TbBudgetTableUpdateCompanionBuilder,
    (TbBudgetData, BaseReferences<_$AppDatabase, $TbBudgetTable, TbBudgetData>),
    TbBudgetData,
    PrefetchHooks Function()>;
typedef $$TbBudgetItemTableCreateCompanionBuilder = TbBudgetItemCompanion
    Function({
  Value<int> id,
  Value<int?> budgetId,
  Value<String?> type,
  Value<int?> productId,
  Value<String?> description,
  Value<double?> quantity,
  Value<double?> unitPrice,
  Value<double?> discountValue,
  Value<double?> discountPercent,
  Value<int?> stockId,
  Value<int?> priceListId,
  Value<double?> costValue,
  Value<int?> sequence,
});
typedef $$TbBudgetItemTableUpdateCompanionBuilder = TbBudgetItemCompanion
    Function({
  Value<int> id,
  Value<int?> budgetId,
  Value<String?> type,
  Value<int?> productId,
  Value<String?> description,
  Value<double?> quantity,
  Value<double?> unitPrice,
  Value<double?> discountValue,
  Value<double?> discountPercent,
  Value<int?> stockId,
  Value<int?> priceListId,
  Value<double?> costValue,
  Value<int?> sequence,
});

class $$TbBudgetItemTableFilterComposer
    extends Composer<_$AppDatabase, $TbBudgetItemTable> {
  $$TbBudgetItemTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get budgetId => $composableBuilder(
      column: $table.budgetId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get productId => $composableBuilder(
      column: $table.productId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get unitPrice => $composableBuilder(
      column: $table.unitPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get discountValue => $composableBuilder(
      column: $table.discountValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get discountPercent => $composableBuilder(
      column: $table.discountPercent,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get stockId => $composableBuilder(
      column: $table.stockId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get priceListId => $composableBuilder(
      column: $table.priceListId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get costValue => $composableBuilder(
      column: $table.costValue, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sequence => $composableBuilder(
      column: $table.sequence, builder: (column) => ColumnFilters(column));
}

class $$TbBudgetItemTableOrderingComposer
    extends Composer<_$AppDatabase, $TbBudgetItemTable> {
  $$TbBudgetItemTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get budgetId => $composableBuilder(
      column: $table.budgetId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get productId => $composableBuilder(
      column: $table.productId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get unitPrice => $composableBuilder(
      column: $table.unitPrice, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get discountValue => $composableBuilder(
      column: $table.discountValue,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get discountPercent => $composableBuilder(
      column: $table.discountPercent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get stockId => $composableBuilder(
      column: $table.stockId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get priceListId => $composableBuilder(
      column: $table.priceListId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get costValue => $composableBuilder(
      column: $table.costValue, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sequence => $composableBuilder(
      column: $table.sequence, builder: (column) => ColumnOrderings(column));
}

class $$TbBudgetItemTableAnnotationComposer
    extends Composer<_$AppDatabase, $TbBudgetItemTable> {
  $$TbBudgetItemTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get budgetId =>
      $composableBuilder(column: $table.budgetId, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<double> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<double> get unitPrice =>
      $composableBuilder(column: $table.unitPrice, builder: (column) => column);

  GeneratedColumn<double> get discountValue => $composableBuilder(
      column: $table.discountValue, builder: (column) => column);

  GeneratedColumn<double> get discountPercent => $composableBuilder(
      column: $table.discountPercent, builder: (column) => column);

  GeneratedColumn<int> get stockId =>
      $composableBuilder(column: $table.stockId, builder: (column) => column);

  GeneratedColumn<int> get priceListId => $composableBuilder(
      column: $table.priceListId, builder: (column) => column);

  GeneratedColumn<double> get costValue =>
      $composableBuilder(column: $table.costValue, builder: (column) => column);

  GeneratedColumn<int> get sequence =>
      $composableBuilder(column: $table.sequence, builder: (column) => column);
}

class $$TbBudgetItemTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TbBudgetItemTable,
    TbBudgetItemData,
    $$TbBudgetItemTableFilterComposer,
    $$TbBudgetItemTableOrderingComposer,
    $$TbBudgetItemTableAnnotationComposer,
    $$TbBudgetItemTableCreateCompanionBuilder,
    $$TbBudgetItemTableUpdateCompanionBuilder,
    (
      TbBudgetItemData,
      BaseReferences<_$AppDatabase, $TbBudgetItemTable, TbBudgetItemData>
    ),
    TbBudgetItemData,
    PrefetchHooks Function()> {
  $$TbBudgetItemTableTableManager(_$AppDatabase db, $TbBudgetItemTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TbBudgetItemTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TbBudgetItemTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TbBudgetItemTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> budgetId = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<int?> productId = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<double?> quantity = const Value.absent(),
            Value<double?> unitPrice = const Value.absent(),
            Value<double?> discountValue = const Value.absent(),
            Value<double?> discountPercent = const Value.absent(),
            Value<int?> stockId = const Value.absent(),
            Value<int?> priceListId = const Value.absent(),
            Value<double?> costValue = const Value.absent(),
            Value<int?> sequence = const Value.absent(),
          }) =>
              TbBudgetItemCompanion(
            id: id,
            budgetId: budgetId,
            type: type,
            productId: productId,
            description: description,
            quantity: quantity,
            unitPrice: unitPrice,
            discountValue: discountValue,
            discountPercent: discountPercent,
            stockId: stockId,
            priceListId: priceListId,
            costValue: costValue,
            sequence: sequence,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> budgetId = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<int?> productId = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<double?> quantity = const Value.absent(),
            Value<double?> unitPrice = const Value.absent(),
            Value<double?> discountValue = const Value.absent(),
            Value<double?> discountPercent = const Value.absent(),
            Value<int?> stockId = const Value.absent(),
            Value<int?> priceListId = const Value.absent(),
            Value<double?> costValue = const Value.absent(),
            Value<int?> sequence = const Value.absent(),
          }) =>
              TbBudgetItemCompanion.insert(
            id: id,
            budgetId: budgetId,
            type: type,
            productId: productId,
            description: description,
            quantity: quantity,
            unitPrice: unitPrice,
            discountValue: discountValue,
            discountPercent: discountPercent,
            stockId: stockId,
            priceListId: priceListId,
            costValue: costValue,
            sequence: sequence,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TbBudgetItemTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TbBudgetItemTable,
    TbBudgetItemData,
    $$TbBudgetItemTableFilterComposer,
    $$TbBudgetItemTableOrderingComposer,
    $$TbBudgetItemTableAnnotationComposer,
    $$TbBudgetItemTableCreateCompanionBuilder,
    $$TbBudgetItemTableUpdateCompanionBuilder,
    (
      TbBudgetItemData,
      BaseReferences<_$AppDatabase, $TbBudgetItemTable, TbBudgetItemData>
    ),
    TbBudgetItemData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TbBudgetTableTableManager get tbBudget =>
      $$TbBudgetTableTableManager(_db, _db.tbBudget);
  $$TbBudgetItemTableTableManager get tbBudgetItem =>
      $$TbBudgetItemTableTableManager(_db, _db.tbBudgetItem);
}
