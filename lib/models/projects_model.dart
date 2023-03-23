class Items{
  final String name;
  final String desc;
  final String image;

  Items({
    required this.name,
    required this.desc,
    required this.image,
});
}
List<Items> denemelist = [
  Items(name: 'Sahibinden.com', desc: 'Sahibinden.com is the last project I wrote. The goal of the project is to help people buying and selling', image: 'assets/images/sahibinden.png'),
  Items(name: 'Bin Bin', desc: 'Bin Bin  is an electric scooter rental platform that makes short distance journeys enjoyable and offers an economical transportation alternative.', image: 'assets/images/binbin.jpg'),
  Items(name: 'Türk Telekom', desc: "It is Turkey's first integrated telecommunication operator. It was established in 2015 in order to respond to the rapidly changing communication and technology needs of customers in the strongest and most accurate way.", image: 'assets/images/turktelekom.jpg'),
  Items(name: 'Cap Cut', desc: 'CapCut; It is an application where quality videos are created for free. Thanks to CapCut, known as a video editing application, you can create quality videos for your social media accounts', image: 'assets/images/capcut.jpg')
];

class Hobby{
  final String title;
  final String image;

  Hobby({
    required this.title,
    required this.image,
  });
}
List<Hobby> hobbyitems = [
  Hobby(title: 'Riding Motorcycle', image: "assets/images/motor_scooter.png"),
  Hobby(title: 'Reading Book',  image: "assets/images/kitap.jpg"),
  Hobby(title: 'Coding ',  image: "assets/images/code.png"),
  Hobby(title: 'Eating Fast Food',  image: "assets/images/fastfood.png"),
  Hobby(title: 'Camping',  image: "assets/images/camping.png"),
  Hobby(title: 'Skating',  image:"assets/images/skating.png" )
];
