class Product {
  Product({
    int? id,
    int? quantity,
    String? name,
    double? price,
    String? image,
  }) {
    _id = id;
    _name = name;
    _price = price;
    _image = image;
    _quantity = quantity??0;
  }

  Product.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _price = json['price'];
    _image = json['image'];
    _quantity = json['quantity']??0;
  }

  int? _id,_quantity=0;
  String? _name,_image;
  double? _price;

  Product copyWith({
    int? id,
    String? name,
    double? price,
    String? image,
    int? quantity,
  }) =>
      Product(
        id: id ?? _id,
        name: name ?? _name,
        price: price ?? _price,
        image: image ?? _image,
        quantity: quantity ?? _quantity,
      );

  int? get id => _id;

  String? get name => _name;

  double? get price => _price;

  String? get image => _image;

  int? get quantity => _quantity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['price'] = _price;
    map['image'] = _image;
    map['quantity'] = _quantity;
    return map;
  }

  void decreaseQuantity() {
    _quantity = _quantity! - 1;
  }

  void setQuantity(int? value) {
    _quantity = value;
  }

  void increaseQuantity() {
    _quantity = _quantity! + 1;
  }
}
