// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:computer_graphic/presentation/resources/color_manger.dart';

class NormalText extends StatelessWidget {
  String text;
  NormalText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      textDirection: TextDirection.rtl,
      style: GoogleFonts.almarai(
        fontSize: 18,
        height: 1.5,
      ),
    );
  }
}

class LinkText extends StatelessWidget {
  String text;
  LinkText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      textDirection: TextDirection.rtl,
      style: GoogleFonts.almarai(
        fontSize: 18,
        color: ColorManager.primary,
        height: 1.5,
      ),
    );
  }
}

class MainTitle extends StatelessWidget {
  String text;
  MainTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.russoOne(
          fontSize: 22,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}

class Items extends StatefulWidget {
  Items({
    Key? key,
    required this.content,
  }) : super(key: key);
  List<Widget> content;
  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: widget.content,
    );
  }
}
