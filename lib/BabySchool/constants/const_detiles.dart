class HomesPageConst {
  String name;
  String icon;
  String color1;
  String color2;

  HomesPageConst(
      {required this.name,
      required this.icon,
      required this.color1,
      required this.color2});

  static List<HomesPageConst> homesPageConst = [
    HomesPageConst(
      name: "Sleep",
      icon: "assets/icons/SplashScreen/ic_slipp.png",
      color1: '0xFFE7B20A',
      color2: "0xFFFFFFFF",
    ),
    HomesPageConst(
      name: "Feeding",
      icon: "assets/icons/SplashScreen/ic_drinc.png",
      color1: '0xFFE94D09',
      color2: "0xFFFFFFFF",
    ),
    HomesPageConst(
      name: "Diaper",
      icon: "assets/icons/SplashScreen/ic_pampers.png",
      color1: '0xFF24945C',
      color2: "0xFFFFFFFF",
    ),
    HomesPageConst(
      name: "Pumping",
      icon: "assets/icons/SplashScreen/ic_water.png",
      color1: '0xFF0DB4E7',
      color2: "0xFFFFFFFF",
    ),
    HomesPageConst(
      name: "Medicine",
      icon: "assets/icons/SplashScreen/ic_tablet.png",
      color1: '0xFF1545BD',
      color2: "0xFFFFFFFF",
    ),
    HomesPageConst(
      name: "Groth",
      icon: "assets/icons/SplashScreen/ic_speed.png",
      color1: '0xFFD7346D',
      color2: "0xFFFFFFFF",
    ),
  ];
}

class MyProfileConst {

  List<List<String>> family;
 String  babies1;
 List <String> babies;
List <String> bayb_name;
 List<String> age;

  MyProfileConst(
      {
      required this.family,
        required this.babies,
        required this.babies1,
        required this.bayb_name,
        required this.age,


      });

  static MyProfileConst myProfileConst =  MyProfileConst(
      family: [["Name","Magdalina Kubica"],
        ["Emile","magdalina55kubica@gmail.com"],
        ["Phone Number", "+00 123456789"],
       [ "Address","Lorem Ipsum address, 55 street, USA"],
       ["Family", "Grandfather Grandmother"]],
      babies: [
        "assets/images/RegisterPage/im_parker.png",
        "assets/images/RegisterPage/im_parker2.png",
        "assets/images/RegisterPage/im_parker.png"
      ],
      babies1: "Babies",
      bayb_name: [
        "Peeter Parker",
        "Peeter Parker",
        "Peeter Parker",
        "Peeter Parker"
      ],
      age: ["4 years", "4 years", "4 years", "4 years"],);
}
