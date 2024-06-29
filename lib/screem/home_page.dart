import 'package:flutter/material.dart';
import 'package:uxui/screem/calender_page.dart';
import 'package:uxui/screem/meeting_Page.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool toggle = true;
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 13.h,
                              width: 13.w,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/profil.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2.8,
                              child: const ListTile(
                                title: Text(
                                  "Dev Mobile",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  "Free Account",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 13.h,
                          width: 13.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 7.h,
                                width: 7.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 2, color: Colors.black)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      right: 0,
                                      top: 1.h,
                                      child: Container(
                                        height: 2.h,
                                        width: 2.w,
                                        decoration: const BoxDecoration(
                                            color: Colors.red,
                                            shape: BoxShape.circle),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 7.h,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black),
                          child: const Center(
                              child: Text(
                            "Today",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              toggle=!toggle;
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CalenderPage()));
                          },
                          child: Container(
                            height: 7.h,
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: const Center(
                                child: Text(
                              "Calender",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )),
                          ),
                        ),
                        Container(
                          height: 8.h,
                          width: 13.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 156, 8, 201),
                          ),
                          child: const Center(
                              child: Text(
                            "+",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          )),
                        ),
                      ],
                    ),
                    
                  
                  ],
                ),
              ),
            
              Expanded(
                flex: 7,
                child: Container(
                  
                  child: Stack(
                    children: [
                  Positioned(
                    top: 2.h,
                    child: Text(
                      "Check your",
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                      Positioned(
                        top: 8.h,
                        child:const Text(
                          "schedule now",
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                      
                      Positioned(
                        top: 19.h,
                        child: Container(
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 156, 8, 201),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 7.h,
                                  width: 13.w,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(150, 255, 255, 255),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                      child: Icon(
                                    Icons.cake,
                                    color: Colors.white,
                                  )),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 1.6,
                                  child: const ListTile(
                                    title: Text(
                                      "Making a birthday cake",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    subtitle: Text(
                                      "07:30 AM",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 3, right: 3, top: 8),
                              child: Container(
                                  height: 7.h,
                                  width: 13.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: RotationTransition(
                                      turns: new AlwaysStoppedAnimation(40 / 360),
                                      child: Icon(Icons.arrow_upward))),
                            ),
                          ],
                        ),
                                          ),
                      ),
                    Positioned(
                      top: 28.h,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 211, 207, 1),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 7.h,
                                  width: 13.w,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(150, 255, 255, 255),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                      child: Icon(
                                    Icons.shop,
                                    color: Colors.black,
                                  )),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  child: const ListTile(
                                    title: Text(
                                      "Claim voucher shopai",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    subtitle: Text(
                                      "07:30 AM",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 3, right: 12, top: 8),
                              child: Container(
                                  height: 7.h,
                                  width: 13.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: RotationTransition(
                                      turns:
                                          new AlwaysStoppedAnimation(40 / 360),
                                      child: Icon(Icons.arrow_upward))),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 37.h,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 144, 189, 86),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 7.h,
                                  width: 13.w,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(150, 255, 255, 255),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                      child: Icon(
                                    Icons.remove_red_eye_sharp,
                                    color: Colors.black,
                                  )),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  child: const ListTile(
                                    title: Text(
                                      "Workout-Arm day",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    subtitle: Text(
                                      "07:30 AM",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 3, right: 13, top: 10),
                              child: Container(
                                  height: 7.h,
                                  width: 13.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: RotationTransition(
                                      turns:
                                          new AlwaysStoppedAnimation(40 / 360),
                                      child: Icon(Icons.arrow_upward))),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 9,
                      left: 9,
                      top: 46.h,
                      child: RotationTransition(
                        turns: new AlwaysStoppedAnimation(-7 / 360),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MeetingPage()));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width / 1.5,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 3, right: 3),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4),
                                        child: Container(
                                          height: 7.h,
                                          width: 13.w,
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                150, 255, 255, 255),
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Center(
                                              child: Icon(
                                            Icons.camera,
                                            color: Colors.white,
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: const ListTile(
                                          title: Text(
                                            "Meeting With Client",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          subtitle: Text(
                                            "07:30 AM",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    "At this meeting, we will discuss the brief",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 5.h,
                                        width: 20.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.greenAccent),
                                        child: const Center(
                                          child: Text(
                                            "Work",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 5.h,
                                        width: 30.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                width: 1, color: Colors.white)),
                                        child: const Center(
                                          child: Text(
                                            "Wed 19 Jun",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 80,
                                        height: 30,
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 6.h,
                                              width: 11.w,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Colors.white),
                                                  image: const DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/profil.jpg"),
                                                      fit: BoxFit.cover)),
                                            ),
                                            Positioned(
                                              left: 2.h,
                                              child: Container(
                                                height: 5.h,
                                                width: 11.w,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white),
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/profil3.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            ),
                                            Positioned(
                                              left: 4.h,
                                              child: Container(
                                                height: 5.h,
                                                width: 11.w,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white),
                                                    shape: BoxShape.circle,
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/profil1.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            ),
                                            Positioned(
                                              left: 6.h,
                                              child: Container(
                                                height: 5.h,
                                                width: 11.w,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white),
                                                    shape: BoxShape.circle,
                                                    image: const DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/profil2.jpg"),
                                                        fit: BoxFit.cover)),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
