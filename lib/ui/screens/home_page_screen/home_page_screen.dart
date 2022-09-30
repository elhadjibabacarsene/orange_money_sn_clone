import 'package:flutter/material.dart';

import 'components/home_page_screen_body.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePageScreenBody(),
    );
  }
}
