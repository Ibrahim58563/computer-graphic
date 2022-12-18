import 'package:computer_graphic/components.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

List<Widget> lessonContent = [
  // lecture 0
  Center(
    child: NormalText(
      text:
          "الخطوة الأولي نقوم بمسح البرنامج لعدم إرادة دارسة المنهج بسبب الطلاب المهملين وبالتالي لن يتم شرح المنهج وسيتم تسقيط الطلاب",
    ),
  ),
  // lecture 1
  Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      NormalText(
        text: "لتسطيب البرنامج علي ويندوز:",
      ),
      InkWell(
        onTap: () async {
          String url =
              "https://www.youtube.com/watch?v=DItMw3CAkuU&list=PLp2eAGIFKMEVpQoEqqEo4o-S1enQ59ocw&index=1";
          if (await canLaunch(url)) {
            await launch(url);
          }
        },
        child: LinkText(text: "اضغط هنا"),
      ),
      NormalText(
        text: "لتسطيب البرنامج علي ماك (معالج intel):",
      ),
      InkWell(
        onTap: () async {
          String url = "https://www.youtube.com/watch?v=Tz0dq2krCW8";
          if (await canLaunch(url)) {
            await launch(url);
          }
        },
        child: LinkText(text: "اضغط هنا"),
      ),
      NormalText(
        text: "لتسطيب البرنامج علي ماك (معالج m):",
      ),
      InkWell(
        onTap: () async {
          String url = "https://www.youtube.com/watch?v=MHlbNbWlrIM&t=90s";
          if (await canLaunch(url)) {
            await launch(url);
          }
        },
        child: LinkText(text: "اضغط هنا"),
      ),
    ],
  ),
  // lecture 2
  SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        NormalText(
          text:
              "أول ما تفتح برنامج code blocks بختار new project بعد كده هختار glut project واختار go بعد كده اضغط next واكتب الأسم اللي انت عايزه واضغط next ثم next وأخيرًا finish",
        ),
        Image.asset("assets/images/1.3(draw-point).png"),
        NormalText(
            text:
                "الكود القادم لرسم مثلث وهنلون المثلث مع تدرج جميل في الألوان"),
        Image.asset("assets/images/1.3(draw-point).png"),
      ],
    ),
  ),
  // lecture 3
  Column(),
  // lecture 4
  Column(
    children: [
      MainTitle(text: "بسم الله الرحمن الرحيم"),
      NormalText(
          text:
              "يتكون كود رسم الدائرة إلى جزئين أساسيين\nالجزء الأول: \n وهو ما تحتويه دالة display كالتالي"),
      Image.asset("assets/images/4.1(normal-circle).png"),
      NormalText(text: "الجزء الثاني:\n دالة الـ run"),
      Image.asset("assets/images/4.2(.png"),
      NormalText(text: "sdjflkdsjfkl ")
    ],
  ),
];
