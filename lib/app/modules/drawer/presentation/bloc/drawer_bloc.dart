import 'package:budget_sales/app/core/shared/helpers/local_storage.dart';
import 'package:budget_sales/app/core/shared/local_storage_key.dart';
import 'package:budget_sales/app/modules/drawer/presentation/bloc/drawer_event.dart';
import 'package:budget_sales/app/modules/drawer/presentation/bloc/drawer_state.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class DrawerBloc extends Bloc<DrawerEvent, DrawerState> {
  String userName = "";

  DrawerBloc() : super(DrawerInitState()) {
    _userLogged();
    on<DrawerLogoutEvent>((event, emit) async {
      await LocalStorageService.instance
          .saveItem(key: LocalStorageKey.token, value: '');
      await LocalStorageService.instance
          .saveItem(key: LocalStorageKey.tbInstitutionId, value: '0');
      await LocalStorageService.instance
          .saveItem(key: LocalStorageKey.tbUserId, value: '0');
      await LocalStorageService.instance
          .saveItem(key: LocalStorageKey.keepConnected, value: false);
      emit(DrawerLogoutState(logged: false));
    });
  }

  void _userLogged() {
    on<UserLoggedEvent>((event, emit) async {
      emit(LoadingState());
      try {
        userName = await LocalStorageService.instance
            .get(key: LocalStorageKey.userName);
      } catch (error, s) {
        await FirebaseCrashlytics.instance
            .recordError(error, s, reason: 'Try to get a UserLogged');
      }
      emit(GetSucessState());
    });
  }
}
