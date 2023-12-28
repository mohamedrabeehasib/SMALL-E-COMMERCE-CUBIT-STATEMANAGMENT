import 'package:ecomerce/app_navigation.dart';
import 'package:ecomerce/const.dart';
import 'package:ecomerce/screens/cart_screen.dart';
import 'package:ecomerce/screens/intro_screen.dart';
import 'package:ecomerce/widgets/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const DrawerHeader(
                child: Icon(
              Icons.shopping_basket_outlined,
              size: 100,
              color: grey,
            )),
            const SizedBox(
              height: 50,
            ),
            MyListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () => Navigator.pop(context)),
            const SizedBox(
              height: 10,
            ),
            MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context);
                  AppNavigator.navigateToNewScreen(
                      false, context, const CartScreen());
                }),
            const SizedBox(
              height: 10,
            ),
            const Spacer(),
            MyListTile(
                text: "Exit",
                icon: Icons.logout,
                onTap: () => AppNavigator.navigateToNewScreen(
                    true, context, const IntroScreen())),
          ],
        ),
      ),
    );
  }
}
