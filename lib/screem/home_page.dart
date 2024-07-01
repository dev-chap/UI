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
          padding: EdgeInsets.all(4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 13.h,
                    width: 13.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("assets/images/profil.jpg"), fit: BoxFit.cover),
                    ),
                  ),
                  Expanded(
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
                  Container(
                    height: 13.w,
                    width: 13.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 8.w,
                            width: 8.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2, color: Colors.black),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 2.5.w,
                          top: 3.w,
                          child: Container(
                            height: 2.5.w,
                            width: 2.5.w,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 0.3.w,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 13.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.w), color: Colors.black),
                      child: Center(
                        child: Text(
                          "Today",
                          style: TextStyle(fontSize: 14.sp, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          toggle = !toggle;
                        });
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CalenderPage()));
                      },
                      child: Container(
                        height: 13.w,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.w), color: Colors.white),
                        child: const Center(
                            child: Text(
                          "Calender",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w),
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
              SizedBox(height: 2.w),
              Text(
                "Check your\nschedule now",
                style: TextStyle(fontSize: 30.sp),
              ),
              SizedBox(height: 2.w),
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 156, 8, 201),
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(150, 255, 255, 255),
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(3.w),
                              child: const Center(
                                child: Icon(
                                  Icons.cake,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  "Making a birthday cake",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                                subtitle: Text(
                                  "07:30 AM",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                              padding: EdgeInsets.all(3.w),
                              child: RotationTransition(turns: new AlwaysStoppedAnimation(40 / 360), child: Icon(Icons.arrow_upward)),
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
                        decoration: BoxDecoration(color: Color.fromARGB(255, 211, 207, 1), borderRadius: BorderRadius.circular(30)),
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
                                  width: MediaQuery.of(context).size.width / 1.6,
                                  child: const ListTile(
                                    title: Text(
                                      "Claim voucher shopai",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
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
                              padding: const EdgeInsets.only(left: 3, right: 12, top: 8),
                              child: Container(
                                  height: 7.h,
                                  width: 13.w,
                                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                                  child: RotationTransition(turns: new AlwaysStoppedAnimation(40 / 360), child: Icon(Icons.arrow_upward))),
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
                        decoration: BoxDecoration(color: Color.fromARGB(255, 144, 189, 86), borderRadius: BorderRadius.circular(30)),
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
                                  width: MediaQuery.of(context).size.width / 1.6,
                                  child: const ListTile(
                                    title: Text(
                                      "Workout-Arm day",
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
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
                              padding: const EdgeInsets.only(left: 3, right: 13, top: 10),
                              child: Container(
                                  height: 7.h,
                                  width: 13.w,
                                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                                  child: RotationTransition(turns: new AlwaysStoppedAnimation(40 / 360), child: Icon(Icons.arrow_upward))),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MeetingPage()));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width / 1.5,
                            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(30)),
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
                                            color: Color.fromARGB(150, 255, 255, 255),
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
                                        width: MediaQuery.of(context).size.width / 1.5,
                                        child: const ListTile(
                                          title: Text(
                                            "Meeting With Client",
                                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                          ),
                                          subtitle: Text(
                                            "07:30 AM",
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    "At this meeting, we will discuss the brief",
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 5.h,
                                        width: 20.w,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.greenAccent),
                                        child: const Center(
                                          child: Text(
                                            "Work",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 5.h,
                                        width: 30.w,
                                        decoration:
                                            BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(width: 1, color: Colors.white)),
                                        child: const Center(
                                          child: Text(
                                            "Wed 19 Jun",
                                            style: TextStyle(color: Colors.white),
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
                                                  border: Border.all(width: 1, color: Colors.white),
                                                  image: const DecorationImage(image: AssetImage("assets/images/profil.jpg"), fit: BoxFit.cover)),
                                            ),
                                            Positioned(
                                              left: 2.h,
                                              child: Container(
                                                height: 5.h,
                                                width: 11.w,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(width: 1, color: Colors.white),
                                                    image: const DecorationImage(image: AssetImage("assets/images/profil3.jpg"), fit: BoxFit.cover)),
                                              ),
                                            ),
                                            Positioned(
                                              left: 4.h,
                                              child: Container(
                                                height: 5.h,
                                                width: 11.w,
                                                decoration: BoxDecoration(
                                                    border: Border.all(width: 1, color: Colors.white),
                                                    shape: BoxShape.circle,
                                                    image: const DecorationImage(image: AssetImage("assets/images/profil1.jpg"), fit: BoxFit.cover)),
                                              ),
                                            ),
                                            Positioned(
                                              left: 6.h,
                                              child: Container(
                                                height: 5.h,
                                                width: 11.w,
                                                decoration: BoxDecoration(
                                                    border: Border.all(width: 1, color: Colors.white),
                                                    shape: BoxShape.circle,
                                                    image: const DecorationImage(image: AssetImage("assets/images/profil2.jpg"), fit: BoxFit.cover)),
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
            ],
          ),
        ),
      ),
    );
  }
}
