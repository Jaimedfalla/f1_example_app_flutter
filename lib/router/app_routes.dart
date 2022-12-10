import 'package:flutter/material.dart';
import 'package:app_flutter/screens/screens.dart';
import 'package:app_flutter/models/models.dart';

class AppRoutes
{
  static const initialRouter = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home',name: 'Home Screen',screen: const HomeScreen(),icon: Icons.home),
    MenuOption(route: 'listView1',name: 'List View 1',screen: const ListView1Screen(),icon: Icons.view_stream),
    MenuOption(route: 'card',name: 'Card',screen: const CardScreen(),icon: Icons.card_membership),
    MenuOption(route: 'alert',name: 'Alert',screen: const AlertScreen(),icon: Icons.notifications),
    MenuOption(route: 'counter',name: 'Counter',screen: const CounterScreen(),icon: Icons.alarm)
  ];
      
  static Route<dynamic>? onGenerateRout(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

  static Map<String,Widget Function(BuildContext)> getMenuRoutes(){
    Map<String,Widget Function(BuildContext)> appRoutes = {};

    for(final option in menuOptions){
      appRoutes.addAll({option.route:(BuildContext context)=> option.screen});
    }

    return appRoutes;
  }
}