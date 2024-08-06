import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:imperio/provider/auth_provider.dart';
import 'package:imperio/provider/sports_provider.dart';
import 'package:imperio/view/login_screen/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
      ChangeNotifierProvider(create: (_) => SportsProvider()),
    ],
    //child: MyApp(),
    child: DevicePreview(builder: (_) => MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
