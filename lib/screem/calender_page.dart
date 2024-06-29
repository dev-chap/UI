import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  bool toggle = false;
  DateTime selectedDate = DateTime.now(); // TO tracking date

  int currentDateSelectedIndex = 0; //For Horizontal Date
  ScrollController scrollController =
      ScrollController(); //Scroll Controller for ListView

  //List Of Months

  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
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
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2.8,
                                child: const ListTile(
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
                            decoration:const BoxDecoration(
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
                                          decoration:const BoxDecoration(
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
                                color: Colors.white),
                            child: const Center(
                                child: Text(
                              "Today",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            )),
                          ),
                          Container(
                            height: 7.h,
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                            child:const Center(
                                child: Text(
                              "Calender",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            )),
                          ),
                          Container(
                            height: 8.h,
                            width: 13.w,
                            decoration:const  BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 156, 8, 201),
                            ),
                            child:const Center(
                                child: Text(
                              "+",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            )),
                          ),
                        ],
                      ),
                     const Row(
                        children: [
                          Text(
                            "Task",
                            style: TextStyle(fontSize: 40),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "schedule ",
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
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                            height: 7.h,
                            child: ListView.separated(
                              separatorBuilder:
                              (BuildContext context, int index) {
                            return const SizedBox(width: 1);
                              },
                              itemCount: listOfDays.length,
                              controller: scrollController,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  currentDateSelectedIndex = index;
                                  listOfDays = listOfDays;
                                  ;
                                });
                              },
                              child: Container(
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    Text(listOfDays[index],
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: currentDateSelectedIndex ==
                                                  index
                                              ? Colors.black
                                              : Colors.grey,
                                        )),
                                  ],
                                ),
                              ),
                            );
                              },
                            )),
                        SizedBox(
                            height: 80,
                            child: ListView.separated(
                              separatorBuilder:
                              (BuildContext context, int index) {
                            return const SizedBox(width: 1);
                              },
                              itemCount: 7,
                              controller: scrollController,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  currentDateSelectedIndex = index;
                                  selectedDate = DateTime.now()
                                      .add(Duration(days: index));
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: currentDateSelectedIndex == index
                                        ? Colors.purple
                                        : Colors.white),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      DateTime.now()
                                          .add(Duration(days: index))
                                          .day
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          color: currentDateSelectedIndex ==
                                                  index
                                              ? Colors.white
                                              : Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            );
                              },
                            )),
                        SizedBox(
                          height: 2.h,
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                             SizedBox(
                          
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               const Text(
                                  "08:00",
                                  style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height / 6,
                                  width: MediaQuery.of(context).size.width / 1.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 5.w),
                                        child: Container(
                                          height: 12.h,
                                          width: 2.w,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  211, 255, 217, 0),
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                        ),
                                      ),
                                      SizedBox(width: 5.w,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Working on Hi-Fi apps",
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                            width: 60.w,
                                           
                                            child:const Text(
                                              "Un texte est une série orale ou écrite de mots perçus ",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 2,),
                             SizedBox(
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               const Text(
                                  "09:21",
                                  style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height / 6,
                                  width: MediaQuery.of(context).size.width / 1.3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 5.w),
                                        child: Container(
                                          height: 12.h,
                                          width: 2.w,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(210, 187, 255, 0),
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                        ),
                                      ),
                                      SizedBox(width: 5.w,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Daily meeting with team",
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                          Container(
                                            height: 10.h,
                                            width: 60.w,
                                           
                                            child:const Text(
                                              "Un texte est une série orale ou écrite de mots perçus comme  ",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                          
                            ],
                          ),
                        )
                     
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
