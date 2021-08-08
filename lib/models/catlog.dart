class CatalogModel {
 static final items = [
    Item(
      id : 1,
  name: "Iphone 12 Pro Max",
  desc: "Apple Iphone 12th Generation",
  price: 1500,
  color: "#33505a",
  image: "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-pro-max-gold-hero?wid=470&hei=556&fmt=png-alpha&.v=1604021660000"
    ),

  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});


}