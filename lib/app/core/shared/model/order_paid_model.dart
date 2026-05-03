class OrderPaidModel {
  int tbPaymentTypeId;
  String namePaymentType;
  String dtExpiration;
  double value;

  OrderPaidModel({
    required this.tbPaymentTypeId,
    required this.namePaymentType,
    required this.dtExpiration,
    required this.value,
  });

  factory OrderPaidModel.fromJson(Map<String, dynamic> json) {
    return OrderPaidModel(
      tbPaymentTypeId: json['tb_payment_type_id'] as int,
      namePaymentType: json['name_payment_type'] as String,
      dtExpiration: json['dt_expiration'] ?? '',
      value: (json['value'] is int)
          ? (json['value'] as int).toDouble()
          : json['value'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'tb_payment_type_id': tbPaymentTypeId,
      'name_payment_type': namePaymentType,
      'dt_expiration': dtExpiration,
      'value': value,
    };
  }
}
