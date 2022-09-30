import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'balance_view_event.dart';

part 'balance_view_state.dart';

class BalanceViewBloc extends Bloc<BalanceViewEvent, BalanceViewState> {
  BalanceViewBloc() : super(BalanceIsShowing()) {
    on<BalanceClick>((event, emit) {
      // TODO: implement event handler
      if (state is BalanceIsShowing) {
        emit(BalanceIsHidden());
      } else {
        emit(BalanceIsShowing());
      }
    });
  }
}
