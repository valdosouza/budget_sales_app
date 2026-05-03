import 'package:budget_sales/app/modules/budget/domain/usecase/budget_usecases.dart';
import 'package:budget_sales/app/modules/budget/presentation/bloc/budget_list_event.dart';
import 'package:budget_sales/app/modules/budget/presentation/bloc/budget_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BudgetListBloc extends Bloc<BudgetListEvent, BudgetListState> {
  BudgetListBloc({required this.getBudgets}) : super(const BudgetListInitial()) {
    on<BudgetListLoad>(_onLoad);
    on<BudgetListClearFilter>(_onClear);
  }

  final GetBudgets getBudgets;

  Future<void> _onLoad(
      BudgetListLoad event, Emitter<BudgetListState> emit) async {
    emit(const BudgetListLoading());
    final result = await getBudgets(
      number: event.number,
      dateStart: event.dateStart,
      dateEnd: event.dateEnd,
      customerName: event.customerName,
    );
    result.fold(
      (failure) => emit(BudgetListError(message: failure.message)),
      (budgets) => emit(BudgetListLoaded(budgets: budgets)),
    );
  }

  Future<void> _onClear(
      BudgetListClearFilter event, Emitter<BudgetListState> emit) async {
    add(const BudgetListLoad());
  }
}
