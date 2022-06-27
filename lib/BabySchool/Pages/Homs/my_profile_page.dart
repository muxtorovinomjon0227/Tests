import 'package:flutter/material.dart';
import 'package:my_cantroller/BabySchool/constants/Colors/splashScreenColors.dart';
import 'package:my_cantroller/BabySchool/constants/const_detiles.dart';
import 'package:my_cantroller/BabySchool/constants/const_detiles.dart';

import 'baby_profile_page.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                            "assets/images/RegisterPage/im_backGround.png"),
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
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40, left: 25),
                              child: Text(
                                "My Profile",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: AppColors.SplashScreenTextColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40, left: 25),
                              child: IconButton(
                                icon: Icon(
                                  Icons.zoom_out_map,
                                  color: AppColors.dydeSplashScreenColor,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BabyProfilePage()),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 40, left: 25, right: 25),
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
                              top: MediaQuery.of(context).size.height * 0.1,
                              left: MediaQuery.of(context).size.width * 0.26),
                          child: Image.asset(
                            "assets/images/SplashScreen/im_dyed_SplashStart.png",
                            height: 200,
                            width: 200,
                            color: AppColors.deydeColor2,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * 0.28,
                                  left: 25,
                                  right: 25),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 65.0,
                                child: ClipRRect(
                                  child: Image.asset(
                                    "assets/images/RegisterPage/im_my_profile.png",
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * 0.3,
                                  left: 25),
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
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: double.infinity,
                      child: Expanded(
                        child: _buildTextList(MyProfileConst.myProfileConst),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12, left: 12),
                      child: Card(
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Create Link",
                                style: TextStyle(
                                    color: AppColors.dydeSplashScreenColor),
                              ),
                              const SizedBox(width: 130),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.arrow_forward_ios_outlined)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            MyProfileConst.myProfileConst.babies1,
                            style: const TextStyle(fontSize: 18),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_circle_outlined,
                                color: AppColors.dydeSplashScreenColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Expanded(
                        child: ListView.builder(
                          itemCount:
                              MyProfileConst.myProfileConst.babies.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              color: Colors.transparent,
                              elevation: 10,
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox(),
                                    Image.asset(
                                      MyProfileConst
                                          .myProfileConst.babies[index]
                                          .toString(),
                                      width: 130,
                                      height: 130,
                                    ),
                                    Text(
                                      MyProfileConst
                                          .myProfileConst.bayb_name[index]
                                          .toString(),
                                      style: TextStyle(
                                          color:
                                              AppColors.dydeSplashScreenColor),
                                    ),
                                    Text(MyProfileConst
                                        .myProfileConst.age[index]
                                        .toString()),
                                    const SizedBox()
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      color: Colors.transparent,
                      width: 200,
                    )
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextList(MyProfileConst myProfileConst) {
    return ListView.builder(
      itemCount: MyProfileConst.myProfileConst.family.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          MyProfileConst.myProfileConst.family[index].first,
                          style: const TextStyle(fontSize: 11),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          MyProfileConst.myProfileConst.family[index]
                              .sublist(1, 2)
                              .toString()
                              .replaceRange(0, 1, ""),
                          style:
                              TextStyle(color: AppColors.dydeSplashScreenColor),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.height)),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
