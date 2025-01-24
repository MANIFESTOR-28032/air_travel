import 'package:air_travel/OnBoarding/presentation/pages/OnPoarding_page.dart';
import 'package:air_travel/SignUp/presentation/pages/DataEntry_page.dart';
import 'package:air_travel/SignUp/presentation/pages/EnterNumber_page.dart';
import 'package:air_travel/SignUp/presentation/pages/EnterTheCode_page.dart';
import 'package:air_travel/travel/presentation/pages/HomeView_page.dart';
import 'package:air_travel/travel/presentation/pages/MoreDetails_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'travel/presentation/widgets/TourPackage_widget.dart';

GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/data_entry',
      builder: (context, state) => DataEntryPage(),
    ),
    GoRoute(
      path: '/enter_the_code',
      builder: (context, state) => EnterTheCode(),
    ),
    GoRoute(
      path: '/enter_number',
      builder: (context, state) => EnterNumberPage(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => OnBoarding(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: 'details',
      builder: (context, state) => MoreDetails(),
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
