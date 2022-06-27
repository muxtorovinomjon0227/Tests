import 'package:flutter/material.dart';
import 'package:my_cantroller/BabySchool/constants/Colors/splashScreenColors.dart';

import 'my_profile_page.dart';

class MilestonePage extends StatefulWidget {
  const MilestonePage({Key? key}) : super(key: key);

  @override
  State<MilestonePage> createState() => _MilestonePageState();
}

class _MilestonePageState extends State<MilestonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/RegisterPage/im_backGround.png"),
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
                      "Milestone",
                      style: TextStyle(
                          fontSize: 18,
                          color: AppColors.SplashScreenTextColor,
                          fontWeight: FontWeight.bold),
                    ),
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
                    top: MediaQuery.of(context).size.height * 0.1,
                    left: MediaQuery.of(context).size.width * 0.26),
                child: Image.asset(
                  "assets/images/SplashScreen/im_dyed_SplashStart.png",
                  height: 200,
                  width: 200,
                  color: AppColors.deydeColor2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.25,
                  left: MediaQuery.of(context).size.width * 0.04,
                ),
                child: Card(
                  color: Colors.transparent,
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: double.infinity,
                          child: Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int index) {
                                  return Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/RegisterPage/im_baby_child.png",
                                        width: 180,
                                        height: 180,
                                      ),
                                      const SizedBox(width: 10),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Lorem ipsum dolor "
                            "sit amet, consectetur adipiscing elit."
                            " Ut suspendisse morbi sit iaculis mauris "
                            "porttitor volutpat. At aenean diam est pharetra "
                            "odio diam malesuada. Orci, amet elementum "
                            "neque sagittis ac odio dignissim amet pulvinar. "
                            "Natoque amet, eget tristique elit elit at lacus,"
                            " sed tellus. Netus tellus sapien ultricies ut "
                            "adipiscing in porttitor lectus ultrices. Ornare "
                            "amet at eu fringilla. Nisl dictum tellus amet libero "
                            "risus augue mauris augue. Pellentesque pharetra aliquet"
                            " suspendisse imperdiet. Semper aliquam eget tempor et"
                            " sed nec. Laoreet magna lobortis adipiscing imperdiet "
                            "vitae mauris libero ullamcorper. Quis",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xffDC2A68),
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                height: 44,
                                width: 130,
                                child: const Center(
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MyProfilePage()),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.dydeSplashScreenColor,
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                height: 44,
                                width: 130,
                                child: const Center(
                                    child: Text("Save",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                            const SizedBox(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
