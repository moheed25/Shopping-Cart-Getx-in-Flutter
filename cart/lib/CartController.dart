import 'package:get/get.dart';

import 'Product.dart';

class CartController extends GetxController{

  RxList<Product> products = List<Product>.empty().obs;

  void addProduct(Product product){
    products.add(product);
    products.last.increaseQuantity();
  }

  void removeProduct(Product product){
    product.decreaseQuantity();
    products.remove(product);
  }

  void clearCart(){
    products.clear();
  }

  void increaseQuantity(Product product){
    if(products.contains(product)){
      products.firstWhere((p) => p.id == product.id).increaseQuantity();
    }
    else{
      addProduct(product);
    }
    products.refresh();
  }

  void decreaseQuantity(Product product){
    if(products.contains(product)){

      var p=products.firstWhere((p) => p.id == product.id);
      if(p.quantity==1){
        removeProduct(product);
      }else{
        p.decreaseQuantity();
      }
    }
    products.refresh();
  }

  int? getQuantity(Product product){
    if(products.contains(product)){
      return products.firstWhere((p) => p.id == product.id).quantity;
    }
    return 0;
  }

}