import 'package:flutter/material.dart';

import '../custom_text/custom_text.dart';

class AmountText extends StatelessWidget {
  const AmountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CustomText(
          text: '2 000 000',
          textType: TextType.h3,
          color: Colors.white,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.0, top: 5),
          child: CustomText(
            text: 'FCFA',
            textType: TextType.paragraph,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
