import 'package:flutter/material.dart';
import 'package:my_cantroller/BabySchool/constants/Colors/splashScreenColors.dart';
import 'package:my_cantroller/BabySchool/constants/const_detiles.dart';

import 'milestone_page.dart';

class HomesPage extends StatefulWidget {
  const HomesPage({Key? key}) : super(key: key);

  @override
  State<HomesPage> createState() => _HomesPageState();
}

class _HomesPageState extends State<HomesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/RegisterPage/im_beak.png"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 40, left: 25),
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Icon(
                                Icons.arrow_back_sharp,
                                color: AppColors.SplashScreenTextColor,
                              )))),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 25),
                    child: Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColors.SplashScreenTextColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 25),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment,
                          color: AppColors.dydeSplashScreenColor,
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 25, right: 25),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20.0,
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/images/RegisterPage/im_baby_avatar.png",
                          height: 40,
                          width: 40,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2,
                    left: MediaQuery.of(context).size.width * 0.4),
                child: Image.asset(
                  "assets/images/SplashScreen/im_dyed_SplashStart.png",
                  height: 95,
                  width: 77,
                  color: AppColors.dydeSplashScreenColor,
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: HomesPageConst.homesPageConst.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){},
                    child: Card(
                      color: Colors.transparent,
                      elevation: 5,
                      child: Container(
                        width: 300,
                        height: 65,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            colors: <Color>[
                              Color(int.parse(
                                  HomesPageConst.homesPageConst[index].color1)),
                              Color(int.parse(
                                  HomesPageConst.homesPageConst[index].color2)),
                            ],
                            tileMode: TileMode.mirror,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                  HomesPageConst.homesPageConst[index].icon),
                              Text(HomesPageConst.homesPageConst[index].name,style: TextStyle(color: Color(int.parse(
                                  HomesPageConst.homesPageConst[index].color1)),fontSize: 18),),
                              Icon(Icons.alarm,color: Color(int.parse(
                                  HomesPageConst.homesPageConst[index].color1)),size: 35,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const MilestonePage()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(22),
                ),
                height: 44,
                width: 130,
                child: const Center(
                    child: Text("Login Now",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))),
              ),
            ),
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
