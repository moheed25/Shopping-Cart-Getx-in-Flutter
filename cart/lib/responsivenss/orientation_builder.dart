import 'package:cart/CartController.dart';
import 'package:cart/Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class MyResponsivenss2 extends StatefulWidget {
  const MyResponsivenss2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyResponsivenss2> createState() => _MyResponsivenss2State();
}

class _MyResponsivenss2State extends State<MyResponsivenss2> {
  List<Product> products = List.generate(
      15,
      (index) => Product(
            id: index + 1,
            name: 'Product $index',
            price: index * 15,
            image:
                'data:image/jpeg;base64,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',
          ));

  CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            //cart icon with stacked count
            IconButton(
              icon: Stack(
                children: [
                  Icon(Icons.shopping_cart),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 15,
                        minHeight: 15,
                      ),
                      child: Obx(
                        () => Text(
                          controller.products.length.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            )
          ],
        ),
        //grid view builder
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.landscape) {
              return Row(
                children: [
                  Container(
                    width: 200,
                    color: Colors.pink,
                  ),
                  Expanded(
                      child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1,
                    ),
                    itemBuilder: (context, index) {
                      final product = products[index];

                      return Card(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                                child: Image.network(
                              product.image!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            )),
                            Text(
                              product.name!,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$${product.price.toString()}",
                              style: const TextStyle(fontSize: 14),
                            ),
                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              buttonHeight: 35,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    controller.decreaseQuantity(product);
                                  },
                                  child: const CircleAvatar(
                                    radius: 12,
                                    child: Icon(CupertinoIcons.minus),
                                  ),
                                ),
                                Obx(() => Text(
                                    "${controller.getQuantity(product)}",
                                    style: TextStyle(fontSize: 24))),
                                InkWell(
                                  onTap: () {
                                    controller.increaseQuantity(product);
                                  },
                                  child: const CircleAvatar(
                                    radius: 12,
                                    child: Icon(CupertinoIcons.plus),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ))
                ],
              );
            }
            return GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                final product = products[index];

                return Card(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          child: Image.network(
                        product.image!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )),
                      Text(
                        product.name!,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$${product.price.toString()}",
                        style: const TextStyle(fontSize: 14),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        buttonHeight: 35,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              controller.decreaseQuantity(product);
                            },
                            child: const CircleAvatar(
                              radius: 12,
                              child: Icon(CupertinoIcons.minus),
                            ),
                          ),
                          Obx(() => Text("${controller.getQuantity(product)}",
                              style: TextStyle(fontSize: 24))),
                          InkWell(
                            onTap: () {
                              controller.increaseQuantity(product);
                            },
                            child: const CircleAvatar(
                              radius: 12,
                              child: Icon(CupertinoIcons.plus),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ));
  }
}
