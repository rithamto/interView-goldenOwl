// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/order_cubit.dart';
import 'package:flutter_application_1/models/Product.dart';
import 'package:flutter_application_1/widget/cartCard.dart';
import 'package:flutter_application_1/widget/productCard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MainApp.provider());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  static BlocProvider provider() {
    return BlocProvider<CartCubit>(
      create: (context) => CartCubit(),
      child: MainApp(),
    );
  }

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    context.read<CartCubit>().getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/icon/background1.png"))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              Container(
                height: 600,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/icon/background.png")),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 0.3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, top: 5, bottom: 5),
                      child: Image.asset(
                        "assets/icon/nike.png",
                        height: 35,
                        width: 60,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, top: 5, bottom: 10),
                      child: Text("Our Product",
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 500,
                      width: 325,
                      margin: EdgeInsets.only(right: 25, left: 25),
                      child: BlocBuilder<CartCubit, CartState>(
                        builder: (context, state) {
                          final lst = state.data?.lstShoes ?? [];
                          final cart = state.data?.cart ?? [];
                          return ListView.separated(
                            primary: false,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 10),
                            itemCount: lst.length,
                            itemBuilder: (context, index) {
                              return ProductCard(
                                isInCart: cart.contains(lst[index]),
                                color: lst[index].color,
                                detail: lst[index].description,
                                image: lst[index].image,
                                name: lst[index].name,
                                price: lst[index].price,
                                onPress: () {
                                  setState(() {
                                    context
                                        .read<CartCubit>()
                                        .addProduct(lst[index]);
                                  });
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Container(
                      height: 600,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/icon/background.png")),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 0.3),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, top: 5, bottom: 5),
                            child: Image.asset(
                              "assets/icon/nike.png",
                              height: 35,
                              width: 60,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, top: 5, bottom: 20),
                            child: Container(
                              width: 325,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Your Cart",
                                      style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  Spacer(),
                                  BlocBuilder<CartCubit, CartState>(
                                    builder: (context, state) {
                                      var total = state.data?.total ?? 0;
                                      return Text(
                                          '\$${total.toStringAsFixed(2)}',
                                          style: const TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 500,
                            width: 325,
                            margin: EdgeInsets.only(right: 25, left: 25),
                            child: BlocBuilder<CartCubit, CartState>(
                              builder: (context, state) {
                                final cart = state.data?.cart ?? [];
                                return cart.isEmpty
                                    ? Text("Your cart is emty", style: TextStyle(fontSize: 15),)
                                    : ListView.separated(
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) =>
                                            const SizedBox(height: 10),
                                        itemCount: cart.length,
                                        itemBuilder: (context, index) {
                                          return CartCard(
                                            color: cart[index].color,
                                            count: cart[index].count,
                                            image: cart[index].image,
                                            name: cart[index].name,
                                            onPress: () {
                                              context
                                                  .read<CartCubit>()
                                                  .minuscount(index);
                                            },
                                            onPress1: () {
                                              context
                                                  .read<CartCubit>()
                                                  .addcount(index);
                                            },
                                            onPress2: () {
                                              setState(() {
                                                context
                                                    .read<CartCubit>()
                                                    .deleteProduct(index);
                                              });
                                            },
                                            price: cart[index].price,
                                          );
                                        },
                                      );
                              },
                            ),
                          ),
                        ],
                      ))),
              Spacer(),
            ],
          ),
        )),
      ),
    );
  }
}
