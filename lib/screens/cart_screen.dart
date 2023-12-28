import 'package:ecomerce/const.dart';
import 'package:ecomerce/cubit/product_cubit.dart';
import 'package:ecomerce/utils/cart_tile.dart';
import 'package:ecomerce/utils/pay_button_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: grey,
            size: 25,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            cart,
            style: aBezze.copyWith(
                fontSize: 40, color: grey, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            check,
            style: aBezze.copyWith(
              fontSize: 16,
              color: grey,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          BlocBuilder<ProductCubit, ProductState>(
            builder: (context, state) {
              return SizedBox(
                height: 450,
                child: Expanded(
                  child: ListView.builder(
                      itemCount:
                          context.read<ProductCubit>().totalProduct.length,
                      itemBuilder: (context, index) => CartTile(
                            index: index,
                            product: context
                                .read<ProductCubit>()
                                .totalProduct[index],
                          )),
                ),
              );
            },
          ),
          const Spacer(),
          const Center(
            child: PayButtonTile(),
          )
        ]),
      ),
    );
  }
}
