// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:computer_graphic/components.dart';
import 'package:computer_graphic/lesson_content.dart';
import 'package:computer_graphic/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonViewer extends StatefulWidget {
  final String? lessonName;
  Widget? lessonContent = Container();
  LessonViewer({
    Key? key,
    this.lessonName,
    this.lessonContent,
  }) : super(key: key);

  @override
  State<LessonViewer> createState() => _LessonViewerState();
}

class _LessonViewerState extends State<LessonViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: MainTitle(text: widget.lessonName.toString())),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: (widget.lessonContent != null)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            width: double.infinity,
                            child: widget.lessonContent),
                      ],
                    )
                  : Center(
                      child: MainTitle(text: "No Data!"),
                    )),
        ));
  }
}
