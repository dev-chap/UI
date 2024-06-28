import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                )),
            Expanded(
                flex: 12,
                child: Container(
                  decoration: BoxDecoration(
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
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  size: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: Center(
                                      child: Icon(
                                        Icons.edit,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: Center(
                                      child: Icon(
                                        Icons.menu,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Meeting",
                          style: TextStyle(fontSize: 45),
                        ),
                        Text(
                          "With Client",
                          style: TextStyle(fontSize: 45),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 144, 189, 86),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Work",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            width: 1, color: Colors.black)),
                                    child: Center(
                                      child: Text(
                                        "Wed 19 Jun",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
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
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 1, color: Colors.white),
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
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              width: 1, color: Colors.white),
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
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.white),
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
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.white),
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
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Un texte est une série orale ou écrite de mots perçus comme constituant un ensemble cohérent.",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 15,
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
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(
                                              201, 224, 224, 224)),
                                      child: Icon(Icons.camera),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.1,
                                      child: ListTile(
                                        title: Text(
                                          "Zoom Meeting",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Row(
                                          children: [
                                            Icon(Icons.join_full),
                                            SizedBox(width: 5,),
                                            Text(
                                              "Agydhfgjfg",
                                              style: TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                    height: 40,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                            94, 155, 39, 176)),
                                    child: Center(
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
                          height: 5,
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
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Color.fromARGB(201, 224, 224, 224)),
                                  child: Icon(Icons.note_sharp),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width /1.5,
                                  child: ListTile(
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
                          height: 5,
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
                                      height: 50,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(
                                              201, 224, 224, 224)),
                                      child: Icon(Icons.notifications),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /1.7,
                                         
                                      child: ListTile(
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
                          height: 25,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(height: 50,
                            width: MediaQuery.of(context).size.width/1.7,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Center(child: Text("Accept",
                            style: TextStyle(color: Colors.white),
                            ),),
                            ),

                                Container(height: 50,
                          width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Center(child: Text("Deny",
                            style: TextStyle(color: Colors.black),
                            ),),
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
