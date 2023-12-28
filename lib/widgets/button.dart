import 'package:ecomerce/const.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.child, required this.onTap});
  final Widget child;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration:
            BoxDecoration(color: grey, borderRadius: BorderRadius.circular(10)),
        child: child,
      ),
    );
  }
}
