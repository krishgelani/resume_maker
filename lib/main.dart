import 'package:flutter/material.dart';
import 'package:resume_maker/home.dart';
import 'package:resume_maker/image.dart';
import 'package:resume_maker/moreinfo.dart';
import 'package:resume_maker/second.dart';
import 'package:resume_maker/third.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => home(),
        '/more':(context) => moreinfo(),
        '/photo':(context) => image(),
        '/second':(context) => second(),
        '/third':(context) => third(),
      },
    ),
  );
}