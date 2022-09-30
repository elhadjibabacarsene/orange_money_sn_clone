import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orange_money/constant/colors/app_colors.dart';
import 'package:orange_money/helpers/custom_text/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/me.jpeg'),
                backgroundColor: Colors.transparent,
              ),
            ),
            /*Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Compte',
                  style: customStyle(typeText: TypeText.m14, color: gray),
                ),
                Row(
                  children: [
                    Text(
                      'Principale',
                      style: customStyle(typeText: TypeText.b18),
                    ),
                    const Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 30,
                    ),
                  ],
                ),
              ],
            )*/
          ],
        ),
        Row(
          children: [
            SvgPicture.asset('assets/icons/notification.svg', width: 28, height: 29,)
          ],
        )
      ],
    );
  }
}
