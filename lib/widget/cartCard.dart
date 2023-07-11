import 'package:flutter/material.dart';
import 'package:flutter_application_1/HexColor.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    super.key,
    this.name,
    this.image,
    this.price,
    this.color,
    this.count,
    this.onPress,
    this.onPress1,
    this.onPress2,
  });
  final String? name;
  final String? image;
  final String? color;
  final double? price;
  final int? count;
  final VoidCallback? onPress;
  final VoidCallback? onPress1;
  final VoidCallback? onPress2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        children: [
          SizedBox(
            height: 110,
            width: 110,
            child: Stack(
              children: [
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor(color!),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 42, right: 25),
                  child: Transform.scale(
                    scale: 1.75,
                    child: Transform.rotate(
                    angle: -0.6,
                    child: Image.network(
                      image!,
                      height: 150,
                      width: 300,
                    ),
                                ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 110,
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name!,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('\$' +
                    price!.toString(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: onPress,
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(35, 35)),
                        padding: MaterialStatePropertyAll(EdgeInsets.all(5)),
                        iconSize: MaterialStatePropertyAll(25),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(1, 119, 119, 119)),
                      ),
                      child: Image.asset(
                          "assets/icon/minus.png",
                          height: 10,
                          width: 10,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 7, right: 7),
                      child: Text(count!.toString()),
                    ),
                    ElevatedButton(
                      onPressed: onPress1,
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(35, 35)),
                        padding: MaterialStatePropertyAll(EdgeInsets.all(5)),
                        iconSize: MaterialStatePropertyAll(25),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(1, 119, 119, 119)),
                      ),
                      child: Image.asset(
                          "assets/icon/plus.png",
                          height: 10,
                          width: 10,
                        )),
                    Spacer(),
                    ElevatedButton(
                      onPressed: onPress2,
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(45, 45)),
                        padding: MaterialStatePropertyAll(EdgeInsets.all(5)),
                        iconSize: MaterialStatePropertyAll(25),
                        shape: MaterialStatePropertyAll(CircleBorder()),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(224, 253, 209, 35)),
                      ),
                      child: Image.asset(
                          "assets/icon/trash.png",
                          height: 15,
                          width: 15,
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
