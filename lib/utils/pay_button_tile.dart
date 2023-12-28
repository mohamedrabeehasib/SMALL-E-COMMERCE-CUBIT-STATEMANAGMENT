

import 'package:ecomerce/const.dart';
import 'package:flutter/material.dart';

class PayButtonTile extends StatelessWidget {
  const PayButtonTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding:
            const EdgeInsets.symmetric(horizontal: 100, vertical: 25),
        decoration: BoxDecoration(
            color: white, borderRadius: BorderRadius.circular(20)),
        child: Text(
          payNow,
          style: aBezze.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: grey,
              letterSpacing: 2),
        ),
      ),
    );
  }
}



