import 'package:flutter/material.dart';
import 'package:flutter_application_1/HexColor.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      this.name,
      this.image,
      this.detail,
      this.price,
      this.color,
      this.onPress,
      this.isInCart});
  final String? name;
  final String? image;
  final String? detail;
  final String? color;
  final double? price;
  final bool? isInCart;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60),
      child: Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                color: HexColor(color!),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Transform.rotate(
                  angle: -0.4,
                  child: Image.network(
                    image!,
                    height: 150,
                    width: 300,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 15),
            child: Text(
              name!,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3, bottom: 30),
            child: Text(
              detail!,
              style: const TextStyle(
                  fontSize: 13, fontWeight: FontWeight.w100, height: 2),
            ),
          ),
          Row(
            children: [
              Text('\$$price',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              const Spacer(),
              isInCart == false
                  ? ElevatedButton(
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(120, 50)),
                        padding: MaterialStatePropertyAll(EdgeInsets.all(5)),
                        iconSize: MaterialStatePropertyAll(25),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(224, 253, 209, 35)),
                      ),
                      onPressed: onPress,
                      child: const Text("ADD TO CART",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)))
                  : ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(50, 50)),
                        padding: MaterialStatePropertyAll(EdgeInsets.all(5)),
                        iconSize: MaterialStatePropertyAll(25),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(224, 253, 209, 35)),
                      ),
                      child: Image.asset(
                        "assets/icon/check.png",
                        height: 25,
                        width: 25,
                      ),
                    ),
            ],
          )
        ],
      )),
    );
  }
}
