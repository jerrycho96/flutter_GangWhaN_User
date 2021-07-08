import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/src/screens/find_account/find_home.dart';
import 'package:flutter_delivery_app/src/screens/find_account/find_id2.dart';
import 'package:flutter_delivery_app/src/screens/find_account/find_pass.dart';
import 'package:flutter_delivery_app/src/screens/home/home.dart';
import 'package:flutter_delivery_app/src/screens/login.dart';
import 'package:flutter_delivery_app/src/screens/register/register.dart';
import 'package:get/get.dart';

import 'src/app.dart';
import 'src/screens/find_account/find_id.dart';
import 'src/screens/register/register_home.dart';
import 'src/screens/register/register_success.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Color(0xffE51A47),
        primaryColor: Colors.white,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => App()),
        GetPage(name: '/Login', page: () => Login()),
        GetPage(name: '/RegisterHome', page: () => RegisterHome()),
        GetPage(name: '/FindHome', page: () => FindHome()),
        GetPage(name: '/FindId', page: () => FindId()),
        GetPage(name: '/FindId2', page: () => FindId2()),
        GetPage(name: '/FindPass', page: () => FindPass()),
        GetPage(name: '/Register', page: () => Register()),
        GetPage(name: '/RegisterSuccess', page: () => RegisterSuccess()),
        GetPage(name: '/Home', page: () => Home()),
      ],
      home: App(),
    );
  }
}
