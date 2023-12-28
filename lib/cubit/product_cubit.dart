// ignore_for_file: prefer_final_fields

import 'package:bloc/bloc.dart';
import 'package:ecomerce/model/model.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  List<Product> _products = [];
  double _totalPrice = 0;

  addToCart(Product product) {
    _products.add(product);
    _totalPrice += product.price;
    emit(UpdateProductCart());
    emit(DoneState());
  }

  removeFromCart(Product product) {
    _products.remove(product);
    _totalPrice -= product.price;
    emit(UpdateProductCart());
  }

  get numberOfProducts => _products.length;
  double get totalPrice => _totalPrice;
  List<Product> get totalProduct => _products;
}
