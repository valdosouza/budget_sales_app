import 'package:budget_sales/app/core/shared/helpers/local_storage.dart';
import 'package:budget_sales/app/core/shared/local_storage_key.dart';
import 'package:budget_sales/app/modules/home/domain/usecase/get_financial_closed_usecase.dart';
import 'package:budget_sales/app/modules/home/presentation/bloc/home_event.dart';
import 'package:budget_sales/app/modules/home/presentation/bloc/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetFinancialClosedUseCase getFinancialClosedUseCase;
  HomeBloc({required this.getFinancialClosedUseCase}) : super(HomeInitial()) {
    on<HomeGetFinancialEvent>((event, emit) async {
      emit(HomeLoadingState());
      final result = await getFinancialClosedUseCase(Params(
        initialDate: event.initialDate,
        finalDate: event.finalDate,
        terminal: event.terminal,
      ));

      result.fold((l) => emit(const HomeErrorState('Erro ao listar os dados')),
          (r) => HomeLoadedState(r));
    });

    on<HomeLogoutEvent>((event, emit) async {
      await LocalStorageService.instance
          .saveItem(key: LocalStorageKey.token, value: '');
      emit(HomeLogoutState());
    });
  }
}
