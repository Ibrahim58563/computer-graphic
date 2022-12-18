// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:computer_graphic/presentation/resources/assets_manager.dart';
import 'package:computer_graphic/presentation/resources/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:computer_graphic/lesson_viewer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components.dart';
import 'lesson_content.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final String lessonName;
  List<String> lessonsName = [
    "Lecture 0",
    "Install Environment",
    "Draw Primitives",
    "Three Triangles",
    "Circle using GL_POINTS",
    "Slope Intercept formula",
    "Parametric Form",
    "Digital Differential Analyzer",
    "Bresenham's Line Algorithm",
    "Lines in other seven octants",
    "Bresenham's Full Implementation",
    "Bresenham's Mathematical Proof",
    "Line in First Octant",
    "Line in Second Octant",
    "Line in Third Octant",
    "Line in Fourth Octant",
    "Line in Fifth Octant",
    "Line in Sixth Octant",
    "Line in Eighth Octant",
    "Line in Seventh Octant",
    "Circle drawing Algorithms",
    "Circle code Implementation",
    "Circle Mathematical Proof",
    "Mathematical Proof First value of P",
    "Midpoint Ellipse Algorithms",
    "Midpoint Ellipse Example",
    "Midpoint Ellipse code Implementation",
    "Scan Line Polygon",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",style: GoogleFonts.russoOne(
          fontSize: 25,
        ),),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  try {
                    return LessonViewer(
                      lessonName: lessonsName[index],
                      lessonContent: lessonContent[index],
                    );
                  } catch (e) {
                    return LessonViewer(
                      lessonName: lessonsName[index],
                      lessonContent: Center(child: MainTitle(text: "No Data!")),
                    );
                  }
                })),
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 16),
                          child: Text(
                            lessonsName[index],
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ]),
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 1,
                child: Container(
                  width: double.infinity,
                  height: 5,
                  color: Colors.grey,
                ),
              ),
              itemCount: lessonsName.length,
            ),
          ),
        ],
      ),
    );
  }
}
