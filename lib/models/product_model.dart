class ProductModel {
  int? id;
  String? type;
  String? title;
  //String? description;
  double? price;
  String? path;

  ProductModel({
    this.id,
    this.type,
    this.title,
    //this.description,
    this.price,
    this.path,
  });
}

List<ProductModel> products = [
  ProductModel(
    id: 1,
    type: "Dota",
    title: "Funko Pop! Juggernaut espada",
    //description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    price: 139.0,
    path: "assets/dota_3.jpg",
  ),
  ProductModel(
    id: 2,
    type: "Dota",
    title: "Funko Pop! Rompe Espíritus",
    //description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    price: 135.0,
    path: "assets/dota_2.jpg",
  ),
  ProductModel(
    id: 3,
    type: "Dota",
    title: "Funko Pop! Pudge con cuchilla",
    //description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    price: 105.0,
    path: "assets/dota_4.jpg",
  ),
  ProductModel(
    id: 4,
    type: "Dota",
    title: "Funko Pop! Asesino fantasma",
    //description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    price: 95.0,
    path: "assets/dota_1.jpg",
  ),
  ProductModel(
    id: 5,
    type: "Dota",
    title: "Polera con capucha! Dota 2",
    //description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    price: 84.0,
    path: "assets/dota_5.jpg",
  ),
  ProductModel(
    id: 6,
    type: "Dota",
    title: "Polo manga corta! Dota 2",
    //description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    price: 54.0,
    path: "assets/dota_6.jpg",
  ),
  ProductModel(
    id: 7,
    type: "Dota",
    title: "Gorra de béisbol! Dota 2",
    //description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    price: 45.0,
    path: "assets/dota_7.jpg",
  ),
  
  ProductModel(
    id: 8,
    type: "Dota",
    title: "Emblem Knit Cap! Dota 2",
    //description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    price: 60.0,
    path: "assets/dota_8.jpg",
  ),
  ProductModel(
    id: 9,
    type: "Dota",
    title: "Mouse-Pad! Dota 2",
    //description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    price: 35.0,
    path: "assets/dota_9.jpg",
  ),
  ProductModel(
    id: 10,
    type: "Dota",
    title: "Llaveros de Coleccion! Dota 2",
    //description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    price: 27.0,
    path: "assets/dota_10.jpg",
  ),
];