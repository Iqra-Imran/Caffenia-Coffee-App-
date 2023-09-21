class Cart {
  late final int? id;
  late final String? images;
  late final String? coffeeNames;
  late final int? coffeePrices;
  late final int? initPrice;
  late final int? quantity;

  Cart({
    required this.id,
    required this.images,
    required this.coffeeNames,
    required this.coffeePrices,
    required this.quantity,
    required this.initPrice,
  });

  Cart.fromMap(Map<dynamic, dynamic> res)
      : id = res["id"],
        images = res["images"],
        coffeeNames = res["coffeeNames"],
        coffeePrices = res["coffeePrices"],
        quantity = res["quantity"],
        initPrice = res["initPrice"];

  Map<String, Object?> toMap(){
    return{
      "id" : id,
      "images" : images,
      "coffeeNames" : coffeeNames,
      "coffeePrices" : coffeePrices,
      "initPrice" : initPrice,
      "quantity" : quantity
    };
  }
}
