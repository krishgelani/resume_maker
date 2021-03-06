import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume_maker/class.dart';
import 'package:resume_maker/eucation.dart';

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    Model m2 = ModalRoute.of(context)!.settings.arguments as Model;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            actions: [
              IconButton(onPressed: (){
                setState(() {
                  pdfGen2(m2);
                });
              }, icon: Icon(Icons.picture_as_pdf))
            ],
          ),
          body: SingleChildScrollView(
            child: Row(
              children: [

                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 5,right: 5),
                    height: 900,
                    width: 100,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),
                          Text("Education",
                            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),

                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.dgree}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.school}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),

                          Text("Skills",
                            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),

                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.s1}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.s2}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${m2.s3}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),

                          Text("Projects",
                            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),

                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.p1}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.p2}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 30,),

                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(11),
                      height: 900,
                      width: 150,
                      color: Colors.brown,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 100,
                            width: 100,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: FileImage(File(m2.image.toString())),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.white,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.name}",
                              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${m2.number}",
                              style: TextStyle(fontSize: 17,color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${m2.email}",
                              style: TextStyle(fontSize: 17,color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${m2.add}",
                              style: TextStyle(fontSize: 17,color: Colors.white),
                            ),
                          ),
                          SizedBox(height:30,),


                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          )),
    );
  }
}