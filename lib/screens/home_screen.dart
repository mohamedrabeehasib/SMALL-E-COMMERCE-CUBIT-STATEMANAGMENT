import 'package:ecomerce/const.dart';
import 'package:ecomerce/model/model.dart';
import 'package:ecomerce/utils/product_tile.dart';
import 'package:ecomerce/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final GlobalKey<ScaffoldState> openDrawer = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: openDrawer,
      drawer: const MyDrawer(),
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            IconButton(
                onPressed: () => openDrawer.currentState?.openDrawer(),
                icon: const Icon(
                  Icons.menu,
                  color: grey,
                  size: 30,
                )),
            const SizedBox(
              height: 50,
            ),
            const Text(
              shop,
              style: TextStyle(
                  fontSize: 45, color: grey, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(hint,
                style: TextStyle(
                  fontSize: 16,
                  color: grey,
                )),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ProductTile(
                  product: products[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
