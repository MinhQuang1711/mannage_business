import 'package:flutter/material.dart';
import 'package:mannager_business/ultils/routers/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routerDelegate: BusinessRouter.router.routerDelegate,
      routeInformationProvider: BusinessRouter.router.routeInformationProvider,
      routeInformationParser: BusinessRouter.router.routeInformationParser,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "Markazi",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
