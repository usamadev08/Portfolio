import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "All Creative Works, \n"
              .richText
              .withTextSpanChildren(
                  ["Selected Projects.".textSpan.amber400.make()])
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: const [
                ProjectWidget(title: "Book Reading App"),
                ProjectWidget(title: "Social Media App"),
                ProjectWidget(title: "Lab Centralize App"),
                ProjectWidget(title: "Coffie App"),
                ProjectWidget(title: "Covid_19 App"),
              ],
              height: 170,
              enlargeCenterPage: true,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: Duration(seconds: 1),
            ),
          ),
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(200)
        .neumorphic(color: Vx.purple700, elevation: 5.0, curve: VxCurve.flat)
        .make()
        .p16();
  }
}
