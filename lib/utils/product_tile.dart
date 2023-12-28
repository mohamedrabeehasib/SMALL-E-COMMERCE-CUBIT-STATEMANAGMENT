import 'package:ecomerce/const.dart';
import 'package:ecomerce/cubit/product_cubit.dart';
import 'package:ecomerce/model/model.dart';
import 'package:ecomerce/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class ProductTile extends StatefulWidget {
  const ProductTile({super.key, required this.product});
  final Product product;

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(right: 10),
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: white,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.product.image),
                  fit: BoxFit.contain)),
        ),
        Text(
          widget.product.name,
          style: aBezze.copyWith(fontSize: 33),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          widget.product.description,
          style: aBezze.copyWith(fontSize: 16),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${widget.product.price}",
              style: aBezze.copyWith(fontSize: 18),
            ),
            BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                return Button(
                    child: const Icon(
                      Icons.add,
                      color: white,
                      size: 20,
                    ),
                    onTap: () {
                      context.read<ProductCubit>().addToCart(widget.product);
                      addingProcess(context);
                      Future.delayed(const Duration(seconds: 1), () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      });
                    });
              },
            )
          ],
        ),
      ]),
    );
  }
}

// Loaging
addingProcess(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(100),
          child: Center(
            child: LottieBuilder.asset('assets/loading.json'),
          ),
        );
      });
}
