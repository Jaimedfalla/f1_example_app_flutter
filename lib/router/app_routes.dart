import 'package:flutter/material.dart';
import 'package:f1_example_app_flutter/screens/screens.dart';
import 'package:f1_example_app_flutter/models/models.dart';

class AppRoutes
{
  static const initialRouter = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(route: 'alert'   ,name: 'Alert'              ,screen: const AlertScreen()    ,icon: Icons.notifications),
    MenuOption(route: 'animated',name: 'Animated Container' ,screen: const AnimatedScreen() ,icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'cirtuits',name: 'Circuits'           ,screen: const ListView1Screen(),icon: Icons.view_stream),
    MenuOption(route: 'counter' ,name: 'Counter'            ,screen: const CounterScreen()  ,icon: Icons.alarm),
    MenuOption(route: 'avatar'  ,name: 'Drivers'            ,screen: const AvatarScreen()   ,icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'suscribe',name: 'Suscribe'           ,screen: const InputsScreen()   ,icon: Icons.app_registration),
    MenuOption(route: 'card'    ,name: 'Teams'              ,screen: const CardScreen()     ,icon: Icons.card_membership)
  ];
      
  static Route<dynamic>? onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

  static Map<String,Widget Function(BuildContext)> getMenuRoutes(){
    Map<String,Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home':(BuildContext context)=> const HomeScreen()});

    for(final option in menuOptions){
      appRoutes.addAll({option.route:(BuildContext context)=> option.screen});
    }

    return appRoutes;
  }
}