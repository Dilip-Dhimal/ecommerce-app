import 'package:ecommerce/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'constants/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  return runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Raleway',
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.subColor,
        ),
        colorSchemeSeed: AppColors.bgColor,
        scaffoldBackgroundColor: Colors.green,
      ),
      home: HomePage(),
    );
  }
}
