import 'package:ebookapp/constants.dart';
import 'package:ebookapp/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const EbookApp());
}

class EbookApp extends StatelessWidget {
  const EbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: KPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const Splashview(),
    );
  }
}
