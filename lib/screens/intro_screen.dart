import 'package:ecomerce/app_navigation.dart';
import 'package:ecomerce/const.dart';
import 'package:ecomerce/screens/home_screen.dart';
import 'package:ecomerce/widgets/button.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            const Icon(
              Icons.shopping_cart_outlined,
              color: grey,
              size: 130,
            ),
            const SizedBox(
              height: 80,
            ),
            Text(
              kSmallShop,
              style: aBezze.copyWith(
                  fontSize: 50, color: black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Button(
                child: const Icon(
                  Icons.arrow_forward,
                  color: white,
                  size: 40,
                ),
                onTap: () {
                  AppNavigator.navigateToNewScreen(
                    false,
                    context,
                    HomeScreen(),
                  );
                })
          ],
        ),
      ),
    );
  }
}





