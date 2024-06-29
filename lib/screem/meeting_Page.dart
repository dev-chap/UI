import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'home_page.dart';

class MeetingPage extends StatefulWidget {
  const MeetingPage({super.key});

  @override
  State<MeetingPage> createState() => _MeetingPageState();
}

class _MeetingPageState extends State<MeetingPage> {
  bool _showBlueBox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround ,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                )),
            Expanded(
                flex: 12,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(232, 245, 245, 245),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              child: Container(
                                height: 7.h,
                                width: 13.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.white),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 7.h,
                                  width: 13.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: const Center(
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 1.h,
                                ),
                                Container(
                                  height: 7.h,
                                  width: 13.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: const Center(
                                    child: Icon(
                                      Icons.menu,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Text(
                          "Meeting",
                          style: TextStyle(fontSize: 45),
                        ),
                        const Text(
                          "With Client",
                          style: TextStyle(fontSize: 45),
                        ),
                        SizedBox(height: 1.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 5.h,
                                  width: 17.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(255, 144, 189, 86),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Work",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 1.h,
                                ),
                                Container(
                                  height: 5.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 1, color: Colors.black)),
                                  child: const Center(
                                    child: Text(
                                      "Wed 19 Jun",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 25.w,
                              height: 5.h,
                              
                              child: Stack(
                                children: [
                                  Container(
                                    height: 5.h,
                                    width: 11.w,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1, color: Colors.white),
                                        image:const DecorationImage(
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
                                              width: 1, color: Colors.white),
                                          image:const  DecorationImage(
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
                                              width: 1, color: Colors.white),
                                          shape: BoxShape.circle,
                                          image:const  DecorationImage(
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
                                              width: 1, color: Colors.white),
                                          shape: BoxShape.circle,
                                          image:const  DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/profil2.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      SizedBox(height: 2.h,),
                      const  Text(
                          "Un texte est une série orale ou écrite de mots perçus comme constituant un ensemble cohérent.",
                          style: TextStyle(color: Colors.grey),
                        ),
                      SizedBox(height: 2.h,),
                        Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 7.h,
                                  width: 13.w,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(
                                              201, 224, 224, 224)),
                                      child: const Icon(Icons.camera),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          2.1,
                                      child: const ListTile(
                                        title: Text(
                                          "Zoom Meeting",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Row(
                                          children: [
                                            Icon(Icons.join_full),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Agydhfgjfg",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                    height: 6.h,
                                    width: 22.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            94, 155, 39, 176)),
                                    child: const Center(
                                      child: Text(
                                        "join",
                                        style: TextStyle(color: Colors.purple),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 7.h,
                                  width: 13.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Color.fromARGB(201, 224, 224, 224)),
                                  child: Icon(Icons.note_sharp),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  child: const ListTile(
                                    title: Text(
                                      "New brief for moble app",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text(
                                      "12:30 AM",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 7.h,
                                  width: 13.w,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(
                                              201, 224, 224, 224)),
                                      child: Icon(Icons.notifications),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          1.7,
                                      child: const ListTile(
                                        title: Text(
                                          "Reminder schedule",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                CupertinoSwitch(
                                  activeColor: Colors.purple,
                                  trackColor: CupertinoColors.inactiveGray,
                                  thumbColor: CupertinoColors.white,
                                  value: _showBlueBox,
                                  onChanged: (value) {
                                    setState(() {
                                      _showBlueBox = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 7.h,
                              width: MediaQuery.of(context).size.width / 1.7,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30)),
                              child:const Center(
                                child: Text(
                                  "Accept",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              height: 7.h,
                              width: MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Center(
                                child: Text(
                                  "Deny",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
