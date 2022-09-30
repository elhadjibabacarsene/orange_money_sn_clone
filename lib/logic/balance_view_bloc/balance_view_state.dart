part of 'balance_view_bloc.dart';

abstract class BalanceViewState extends Equatable {
  const BalanceViewState();

  @override
  List<Object> get props => [];
}

class BalanceViewInitial extends BalanceViewState {
  @override
  List<Object> get props => [];
}

class BalanceIsShowing extends BalanceViewState {}

class BalanceIsHidden extends BalanceViewState {}
