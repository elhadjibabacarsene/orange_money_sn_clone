part of 'balance_view_bloc.dart';

abstract class BalanceViewEvent extends Equatable {
  const BalanceViewEvent();

  @override
  List<Object> get props => [];
}

class BalanceClick extends BalanceViewEvent {}
