import 'package:flutter/material.dart';
import 'package:uxui/screem/meeting_Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                flex: 4,
                child: Container(
              
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/profil.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2.8,
                                child: ListTile(
                                  title: Text(
                                    "Dev Mobile",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 2, color: Colors.black)),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        right: 0,
                                        child: Container(
                                          height: 10,
                                          width: 10,
                                          decoration: BoxDecoration(
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
                            height: 50,
                            width: MediaQuery.of(context).size.width / 3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                            child: Center(
                                child: Text(
                              "Today",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            )),
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Center(
                                child: Text(
                              "Calender",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 156, 8, 201),
                            ),
                            child: Center(
                                child: Text(
                              "+",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Check your",
                            style: TextStyle(fontSize: 40),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "schedule now",
                            style: TextStyle(fontSize: 40),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Stack(
                  children: [
                    Container(
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
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(150, 255, 255, 255),
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child: Icon(
                                  Icons.cake,
                                  color: Colors.white,
                                )),
                              ),
                              Container(
                                width:MediaQuery.of(context).size.width / 1.6,
                                child: ListTile(
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
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                   child: RotationTransition(
                                     turns: new AlwaysStoppedAnimation(40 / 360),
                                  child: Icon(Icons.arrow_upward))),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 70,
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
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                color: Color.fromARGB(150, 255, 255, 255),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                      child: Icon(
                                    Icons.shop,
                                    color: Colors.black,
                                  )),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  child: ListTile(
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
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
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
                      top: 140,
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
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                   color: Color.fromARGB(150, 255, 255, 255),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                      child: Icon(
                                    Icons.remove_red_eye_sharp,
                                    color: Colors.black,
                                  )),
                                ),
                                Container(
                                           
                                  width:
                                      MediaQuery.of(context).size.width / 1.6,
                                  child: ListTile(
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
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
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
                      right: 9,
                      left: 9,
                      top: 190,
                      child: RotationTransition(
                        turns: new AlwaysStoppedAnimation(-7 / 360),
                        child:  InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MeetingPage()));
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
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(150, 255, 255, 255),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.camera,
                                          color: Colors.white,
                                        )),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width /
                                            1.5,
                                        child: ListTile(
                                          title: Text(
                                            "Meeting With Client",
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
                                  Text(
                                    "At this meeting, we will discuss the brief",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      
                                      Container(
                                        height: 30,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.greenAccent),
                                        child: Center(
                                          child: Text(
                                            "Work",
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                width: 1, color: Colors.white)),
                                        child: Center(
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
                                              height: 30,
                                              width: 30,
                                              decoration:  BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(width: 1, color: Colors.white),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/profil.jpg"),
                                                      fit: BoxFit.cover)),
                                            ),
                                               Positioned(
                                                left: 10,
                                              
                                                 child: Container(
                                                                                           height: 30,
                                                                                           width: 30,
                                                                                           decoration:  BoxDecoration(
                                                    shape: BoxShape.circle,
                                                     border: Border.all(width: 1, color: Colors.white),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/profil3.jpg"),
                                                        fit: BoxFit.cover)),
                                                                                         ),
                                               ),
                                                    Positioned(
                                                left: 20,
                                              
                                                 child: Container(
                                                                                           height: 30,
                                                                                           width: 30,
                                                                                           decoration:  BoxDecoration(
                                                                                             border: Border.all(width: 1, color: Colors.white),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/images/profil1.jpg"),
                                                        fit: BoxFit.cover)),
                                                                                         ),
                                               ),
                                                     Positioned(
                                                left: 40,
                                              
                                                 child: Container(
                                                                                           height: 30,
                                                                                           width: 30,
                                                                                           decoration:  BoxDecoration(
                                                                                             border: Border.all(width: 1, color: Colors.white),
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
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
            ],
          ),
        ),
      ),
    );
  }
}
