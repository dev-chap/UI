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
                      color: Color.fromARGB(255, 105, 76, 241),
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
                      child: Container(
                        height: 40.w,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 105, 76, 241),
                          borderRadius: BorderRadius.circular(5.w),
                        ),
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.all(4.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(150, 255, 255, 255),
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(3.w),
                              child: Icon(
                                Icons.cake,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "Making a birthday cake",
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                  Text(
                                    "07:30 AM",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 16),
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
                      left: 0,
                      right: 0,
                      top: 20.w,
                      child: Container(
                        height: 40.w,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 253, 199, 66),
                          borderRadius: BorderRadius.circular(5.w),
                        ),
                        padding: EdgeInsets.all(4.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(150, 255, 255, 255),
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(3.w),
                              child: Icon(
                                Icons.shop,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "Claim voucher shopai",
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                                  ),
                                  Text(
                                    "07:30 AM",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 16),
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
                      left: 0,
                      right: 0,
                      top: 40.w,
                      child: Container(
                        height: 40.w,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 203, 216, 125),
                          borderRadius: BorderRadius.circular(5.w),
                        ),
                        padding: EdgeInsets.all(4.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(150, 255, 255, 255),
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(3.w),
                              child: Icon(
                                Icons.remove_red_eye_sharp,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "Workout-Arm day",
                                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                                  ),
                                  Text(
                                    "07:30 AM",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 16),
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
                      right: 0,
                      left: 0,
                      top: 60.w,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MeetingPage()));
                        },
                        child: Container(
                          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5.w)),
                          padding: EdgeInsets.all(4.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(3.w),
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(150, 255, 255, 255),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.camera,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 4.w),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Meeting With Client",
                                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                                        ),
                                        Text(
                                          "07:30 AM",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),
                              Text(
                                "At this meeting, we will discuss the brief",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                ),
                              ),
                              SizedBox(height: 8.w),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.w),  color: Color.fromARGB(255, 203, 216, 125),),
                                      padding: EdgeInsets.all(2.w),
                                      child: Text(
                                        "Work",
                                        style: TextStyle(color: Colors.black),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.w),
                                        border: Border.all(width: 1, color: Colors.white),
                                      ),
                                      padding: EdgeInsets.all(2.w),
                                      child: const Center(
                                        child: Text(
                                          "Wed 19 Jun",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Expanded(
                                    child: SizedBox(
                                      height: 12.w,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            bottom: 0,
                                            right: 12.w,
                                            child: Container(
                                              height: 10.w,
                                              width: 10.w,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(width: 1, color: Colors.white),
                                                  image: const DecorationImage(image: AssetImage("assets/images/profil.jpg"), fit: BoxFit.cover)),
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            bottom: 0,
                                            right: 8.w,
                                            child: Container(
                                              height: 10.w,
                                              width: 10.w,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(width: 1, color: Colors.white),
                                                  image: const DecorationImage(image: AssetImage("assets/images/profil3.jpg"), fit: BoxFit.cover)),
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            bottom: 0,
                                            right: 4.w,
                                            child: Container(
                                              height: 10.w,
                                              width: 10.w,
                                              decoration: BoxDecoration(
                                                  border: Border.all(width: 1, color: Colors.white),
                                                  shape: BoxShape.circle,
                                                  image: const DecorationImage(image: AssetImage("assets/images/profil1.jpg"), fit: BoxFit.cover)),
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            bottom: 0,
                                            right: 0.w,
                                            child: Container(
                                              height: 10.w,
                                              width: 10.w,
                                              decoration: BoxDecoration(
                                                  border: Border.all(width: 1, color: Colors.white),
                                                  shape: BoxShape.circle,
                                                  image: const DecorationImage(image: AssetImage("assets/images/profil2.jpg"), fit: BoxFit.cover)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
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
