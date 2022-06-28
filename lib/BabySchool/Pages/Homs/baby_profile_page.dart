import 'package:flutter/material.dart';
import 'package:my_cantroller/BabySchool/constants/Colors/splashScreenColors.dart';
import 'package:my_cantroller/BabySchool/constants/const_detiles.dart';

class BabyProfilePage extends StatefulWidget {
  const BabyProfilePage({Key? key}) : super(key: key);

  @override
  State<BabyProfilePage> createState() => _BabyProfilePageState();
}

class _BabyProfilePageState extends State<BabyProfilePage> {
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
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) =>
                                  //       const MyProfilePage()),
                                  // );
                                },
                              ),
                            ),
                            InkWell(
                              onTap: () {
                              },
                              child: Padding(
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
                        InkWell(
                          onTap: () {
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.28,
                                    left: 25,
                                    right: 25),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 65.0,
                                  child: ClipRRect(
                                    child: Image.asset(
                                      "assets/images/RegisterPage/im_parker.png",
                                    ),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.3,
                                    right: 80),
                                child: InkWell(
                                  onTap: () {
                                    _showAlarmDialog(context);
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Icon(
                                      Icons.arrow_back_sharp,
                                      color: AppColors.SplashScreenTextColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    _buildTextList(),
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

  Widget _buildTextList() {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          Card(
            child: Container(
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(fontSize: 11),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Peeter Parker",
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
          Card(
            child: Container(
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Date of Birth",
                          style: TextStyle(fontSize: 11),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "6th July 2017",
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
          Card(
            child: Container(
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Sex",
                          style: TextStyle(fontSize: 11),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Female",
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
          Card(
            child: Container(
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(fontSize: 11),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "15 kg",
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
          Card(
            elevation: 12,
            child: Container(
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              constraints: const BoxConstraints(
                maxHeight: double.infinity,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(fontSize: 11),
                        ),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.height)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet,"
                      " consectetur adipiscing elit. Tellus "
                      "nisl nisl, facilisis in consequat "
                      "feugiat. Tortor, faucibus porttitor eu, "
                      "in orci, maecenas dui sollicitudin tellus. "
                      "Non quam senectus imperdiet quisque amet, et,"
                      " dignissim sit convallis. Ut ridiculus diam in a.",
                      style: TextStyle(color: AppColors.dydeSplashScreenColor),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _showAlarmDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return  AlertDialog(
          content: SizedBox(
            width: 300,
            height: 470,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   const SizedBox(),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 65.0,
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/images/RegisterPage/im_parker.png",
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    const SizedBox(),
                  ],
                ),
                Card(
                  child: Container(
                    width: double.infinity,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(fontSize: 11),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Peeter Parker",
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
                Card(
                  child: Container(
                    width: double.infinity,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Date of Birth",
                                style: TextStyle(fontSize: 11),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "6th July 2017",
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
                Card(
                  child: Container(
                    width: double.infinity,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Sex",
                                style: TextStyle(fontSize: 11),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Female",
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
                Card(
                  child: Container(
                    width: double.infinity,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Weight",
                                style: TextStyle(fontSize: 11),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "15 kg",
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
                Center(
                  child: InkWell(
                    onTap: () {
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.dydeSplashScreenColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      height: 44,
                      width: 130,
                      child: const Center(
                          child: Text("Add Babysdajbhjbc",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                    ),
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
