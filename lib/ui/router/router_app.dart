import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orange_money/ui/screens/home_page_screen/home_page_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSetting) {
    switch(routeSetting.name){
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePageScreen());
    }
    return null;
  }
}
