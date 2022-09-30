import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_money/logic/balance_view_bloc/balance_view_bloc.dart';

import 'card_om/card_om.dart';
import 'custom_app_bar/custom_app_bar.dart';

class HomePageScreenBody extends StatelessWidget {
  const HomePageScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const CustomAppBar(),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (BuildContext context) => BalanceViewBloc(),
                ),
              ],
              child: const CardOm(),
            ),
          ),
        ],
      ),
    ));
  }
}
