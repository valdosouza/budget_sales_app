import 'package:budget_sales/app/modules/budget/domain/entity/budget_entity.dart';
import 'package:budget_sales/app/modules/budget/domain/entity/budget_item_entity.dart';
import 'package:equatable/equatable.dart';

abstract class BudgetRegisterEvent extends Equatable {
  const BudgetRegisterEvent();
}

/// Load existing budget for viewing/editing (from API by remote id)
class BudgetRegisterLoadRemote extends BudgetRegisterEvent {
  const BudgetRegisterLoadRemote({required this.budgetId});

  final int budgetId;

  @override
  List<Object?> get props => [budgetId];
}

/// Start a fresh new local budget
class BudgetRegisterStartNew extends BudgetRegisterEvent {
  const BudgetRegisterStartNew({required this.userId, required this.salesmanId});

  final int userId;
  final int salesmanId;

  @override
  List<Object?> get props => [userId, salesmanId];
}

/// Load existing local budget for editing
class BudgetRegisterLoadLocal extends BudgetRegisterEvent {
  const BudgetRegisterLoadLocal({required this.localId});

  final int localId;

  @override
  List<Object?> get props => [localId];
}

/// Update budget header fields in state (before saving)
class BudgetRegisterUpdate extends BudgetRegisterEvent {
  const BudgetRegisterUpdate({required this.budget});

  final BudgetEntity budget;

  @override
  List<Object?> get props => [budget];
}

/// Save (insert or update) the budget locally
class BudgetRegisterSaveLocal extends BudgetRegisterEvent {
  const BudgetRegisterSaveLocal({required this.budget});

  final BudgetEntity budget;

  @override
  List<Object?> get props => [budget];
}

/// Load items for the current local budget
class BudgetRegisterLoadItems extends BudgetRegisterEvent {
  const BudgetRegisterLoadItems({required this.localBudgetId});

  final int localBudgetId;

  @override
  List<Object?> get props => [localBudgetId];
}

/// Add or update a local item
class BudgetRegisterSaveItem extends BudgetRegisterEvent {
  const BudgetRegisterSaveItem({required this.item, this.isNew = true});

  final BudgetItemEntity item;
  final bool isNew;

  @override
  List<Object?> get props => [item, isNew];
}

/// Delete a local item
class BudgetRegisterDeleteItem extends BudgetRegisterEvent {
  const BudgetRegisterDeleteItem({required this.itemId, required this.localBudgetId});

  final int itemId;
  final int localBudgetId;

  @override
  List<Object?> get props => [itemId, localBudgetId];
}

/// Send to the remote server (POST) and then wipe local records
class BudgetRegisterSubmit extends BudgetRegisterEvent {
  const BudgetRegisterSubmit({required this.localBudgetId});

  final int localBudgetId;

  @override
  List<Object?> get props => [localBudgetId];
}
