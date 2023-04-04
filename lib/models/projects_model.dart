class Hobby {
  final String title;
  final String image;

  Hobby({
    required this.title,
    required this.image,
  });
}

List<Hobby> hobbyitems = [
  Hobby(title: 'Riding Motorcycle', image: "assets/images/motor_scooter.png"),
  Hobby(title: 'Reading Book', image: "assets/images/kitap.jpg"),
  Hobby(title: 'Coding ', image: "assets/images/code.png"),
  Hobby(title: 'Eating Fast Food', image: "assets/images/fastfood.png"),
  Hobby(title: 'Camping', image: "assets/images/camping.png"),
  Hobby(title: 'Skating', image: "assets/images/skating.png")
];
