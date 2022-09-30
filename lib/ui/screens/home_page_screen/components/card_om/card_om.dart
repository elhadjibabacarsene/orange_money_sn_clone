import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_money/logic/balance_view_bloc/balance_view_bloc.dart';
import 'package:orange_money/ui/widget/custom_text/custom_text.dart';

import '../../../../widget/amount_text/amount_text.dart';
import '../../../../widget/qr_code_head/qr_code_head.dart';

class CardOm extends StatelessWidget {
  const CardOm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget isHiddenBalance() {
        List<Widget> _listCircle = [];
        var _circle = const Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: CircleAvatar(
            radius: 3.2,
            backgroundColor: Colors.white,
          ),
        );
        // generate list
        for (var i = 0; i < 8; i++) {
          _listCircle.add(_circle);
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _listCircle,
        );
    }
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 50.0,
                offset: Offset(0, 20),
              )
            ],
          ),
          child: Image.asset('assets/icons/card.png'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Compte
                  Row(
                    children: const [
                      CustomText(
                        text: 'Principal',
                        textType: TextType.title,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  // Balance
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomText(
                          text: 'Mon Solde :',
                          textType: TextType.paragraph,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: GestureDetector(
                            onTap: () {
                              BlocProvider.of<BalanceViewBloc>(context)
                                  .add(BalanceClick());
                            },
                            child: BlocBuilder<BalanceViewBloc, BalanceViewState>(
                                builder: (context, state) {
                              return Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Icon(
                                      state is BalanceIsShowing
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  state is BalanceIsShowing
                                      ? const AmountText()
                                      : isHiddenBalance(),
                                ],
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const QrCodeHead(),
            ],
          ),
        ),
      ],
    );
  }
}
