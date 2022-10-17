import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CartController.dart';
import 'Product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Shopping Cart Management'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Product> products = List.generate(
      10,
      (index) => Product(
            id: index + 1,
            name: 'Product $index',
            price: index * 10,
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
                        minWidth: 20,
                        minHeight: 20,
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
        body: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
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
        ));
  }
}
