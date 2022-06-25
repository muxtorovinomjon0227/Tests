class HomesPageConst{
  String name;
  String icon;
  String color1;
  String color2;

  HomesPageConst({required this.name,required this.icon,required this.color1,required this.color2});

    static List<HomesPageConst> homesPageConst =[
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