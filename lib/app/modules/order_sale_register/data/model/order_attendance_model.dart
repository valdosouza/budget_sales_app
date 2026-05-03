class OrderAttendanceModel {
  int id;
  int tbInstitutionId;
  int tbCustomerId;
  String nameCustomer;
  int tbSalesmanId;
  String nameSalesman;
  int tbUserId;
  String dtRecord;
  int tbPriceListId;

  OrderAttendanceModel({
    required this.id,
    required this.tbInstitutionId,
    required this.tbCustomerId,
    required this.nameCustomer,
    required this.tbSalesmanId,
    required this.nameSalesman,
    required this.tbUserId,
    required this.dtRecord,
    required this.tbPriceListId,
  });
}
