import 'package:flutter/material.dart';
import 'package:navigation_service/services/navigation_service.dart';

import 'constants/route_paths.dart' as routes;
import 'locator.dart';
import 'router.dart' as router;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(backgroundColor: Colors.grey[800]),
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.LoginRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
