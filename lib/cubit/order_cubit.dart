import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/Product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState.initial(data: CartStateData()));

  Future<Product> readJson() async {
  final String file = await rootBundle.loadString('assets/shoes.json');
  final data = await json.decode(file);
  var product = Product.fromJson(data);
  return product;
}

  void getProduct() async {
    final product = await readJson();
    final lstShoes = product.shoes;
    emit(CartState.getList(
        data: state.data?.copyWith(lstShoes: lstShoes ?? [], cart: [])));
  }

  Future<void> addProduct(Shoes shoes) async {
    List<Shoes> _lst = [...state.data!.cart];
    double total = state.data!.total;
    _lst.add(shoes);
    if (shoes.count == 0) {
      shoes.count++;
    }
    total += (shoes.price! * shoes.count);
    emit(CartState.getList(
        data: state.data?.copyWith(cart: _lst, total: total)));
  }

  Future<void> addcount(int index) async {
    List<Shoes> _lst = [...state.data!.cart];
    double total = state.data!.total;
    total -= (_lst[index].price! * _lst[index].count);
    _lst[index].count++;
    total += (_lst[index].price! * _lst[index].count);
    emit(CartState.getList(
        data: state.data?.copyWith(cart: _lst, total: total)));
  }

  Future<void> minuscount(int index) async {
    List<Shoes> _lst = [...state.data!.cart];
    double total = state.data!.total;
    _lst[index].count--;
    if (_lst[index].count > 0) {
      total -= (_lst[index].price! * _lst[index].count);
      emit(CartState.getList(
          data: state.data?.copyWith(cart: _lst, total: total)));
    } else {
      total -= _lst[index].price!;
      total -= (_lst[index].price! * _lst[index].count);
      _lst[index].count = 0;
      _lst.removeAt(index);
      emit(CartState.getList(
          data: state.data?.copyWith(cart: _lst, total: total)));
    }
  }

  Future<void> deleteProduct(int index) async {
    List<Shoes> _lst = [...state.data!.cart];
    double total = state.data!.total;
    total -= (_lst[index].price! * _lst[index].count);
    _lst[index].count = 0;
    _lst.removeAt(index);
    emit(CartState.getList(
        data: state.data?.copyWith(cart: _lst, total: total)));
  }

  // double total(List<Shoes> lst){
  //   var total, lstprice, lstcount;
  //   lst.forEach((element) {lstcount[element] = lst[element].count; });
  //   return total;
  // }
}
