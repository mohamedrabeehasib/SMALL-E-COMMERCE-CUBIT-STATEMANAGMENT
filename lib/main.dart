import 'package:ecomerce/const.dart';
import 'package:ecomerce/cubit/product_cubit.dart';
import 'package:ecomerce/screens/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ProductCubit(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroScreen(),
      theme: themeData(),
    );
  }
}

ThemeData themeData() {
  return ThemeData(
      scaffoldBackgroundColor: bgColor,
      appBarTheme: const AppBarTheme(
        toolbarHeight: 100,
        color: Colors.transparent,
        elevation: 0,
      ));
}
