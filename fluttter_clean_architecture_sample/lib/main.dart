import 'package:flutter/material.dart';
import 'package:fluttter_clean_architecture_sample/core/global_bindings.dart';
import 'package:fluttter_clean_architecture_sample/core/routers/app_router.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/home/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GlobalBindings(),
      onGenerateRoute: AppRouter.generateRoute,
      home: HomePage(),
    );
  }
}
