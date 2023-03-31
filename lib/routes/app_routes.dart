import 'package:flutter/material.dart';
import 'package:flutter_/models/menu_option.dart';
import 'package:flutter_/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    // ignore: todo
    // TODO:  borrar home,
    MenuOption(
        route: 'card',
        icon: Icons.card_membership,
        name: 'card',
        screen: const CardScreen()),
    MenuOption(
        route: 'alert',
        icon: Icons.lock_clock,
        name: 'alert',
        screen: const AlertScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'listview',
        screen: const ListView1Screen()),

    MenuOption(
        route: 'circlescreen',
        icon: Icons.replay_circle_filled_sharp,
        name: 'circles',
        screen: const CircleScreen()),

    MenuOption(
        route: 'animatedscreen',
        icon: Icons.animation,
        name: 'animated',
        screen: const AnimatedScreen()),

    MenuOption(
        route: 'inputscreen',
        icon: Icons.input,
        name: 'inputs',
        screen: const InputsScreen()),

    MenuOption(
        route: 'SlidesScreen',
        icon: Icons.sledding_rounded,
        name: 'Slides',
        screen: const SliderScreen()),

    MenuOption(
        route: 'infinityscreen',
        icon: Icons.screen_rotation_alt_outlined,
        name: 'Slides',
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    // ignore: non_constant_identifier_names
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  //static Map<String, Widget Function(BuildContext)> routes = {
  //'listview1': (BuildContext context) => const ListView1Screen(),
  //'alert': (BuildContext context) => const AlertScreen(),
  //'home': (BuildContext context) => const HomeScreen(),
  //'card': (BuildContext context) => const CardScreen()
  //};

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
