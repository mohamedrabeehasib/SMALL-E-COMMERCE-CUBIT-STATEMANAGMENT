import 'package:ecomerce/const.dart';
import 'package:ecomerce/cubit/product_cubit.dart';
import 'package:ecomerce/model/model.dart';
import 'package:ecomerce/utils/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartTile extends StatefulWidget {
  const CartTile({super.key, required this.index, required this.product});
  final int index;
  final Product product;

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(bottom: 20),
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: ListTile(
          title: Text(
            context.read<ProductCubit>().totalProduct[widget.index].name,
            style: aBezze.copyWith(fontSize: 18),
          ),
          subtitle: Text(
              "\$ ${context.read<ProductCubit>().totalProduct[widget.index].price}"),
          leading: Image.asset(
            context.read<ProductCubit>().totalProduct[widget.index].image,
            fit: BoxFit.fill,
          ),
          trailing: IconButton(
              onPressed: () {
                addingProcess(context);
                Future.delayed(const Duration(seconds: 1), () {
                  setState(() {
                    context.read<ProductCubit>().removeFromCart(widget.product);
                    Navigator.pop(context);
                  });
                });
              },
              icon: const Icon(Icons.cancel_outlined)),
        ),
      ),
    );
  }
}
