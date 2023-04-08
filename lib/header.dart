import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nameWidget = "Usama\nKhan."
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack([
          const PictureWidget(),
          Row(
            children: [
              VStack([
                if (context.isMobile) 50.heightBox else 10.heightBox,
                const CustomAppBar().shimmer(primaryColor: Coolors.accentColor),
                30.heightBox,
                nameWidget,
                20.heightBox,
                VxBox()
                    .color(Coolors.accentColor)
                    .size(60, 10)
                    .make()
                    .shimmer(primaryColor: Coolors.accentColor),
                30.heightBox,
                SoicalAccounts(),
              ]).pSymmetric(
                h: context.percentWidth * 10,
                v: 32,
              ),
              Expanded(
                  child: VxResponsive(
                fallback: const Offstage(),
                medium: IntroductionWidget()
                    .pOnly(left: 120)
                    .h(context.percentHeight * 60),
                large: IntroductionWidget()
                    .pOnly(left: 120)
                    .h(context.percentHeight * 60),
              )),
            ],
          ).w(context.screenWidth)
        ])
      ]))
          //////************** */
          // .size(context.screenWidth, context.screenHeight * 60)
          .color(Coolors.SecondaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          "-Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "Flutter Developer | Firebase | Dart and more than 1+ years of experience, delivering beautiful, pixel-perfect Flutter apps."
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        ElevatedButton(
          child: Text('Visit UsamaKhan.com').text.make(),
          onPressed: () {
            launch('https://www.instagram.com/umar_z3/');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Coolors.accentColor,
          ),
        ).h(50)
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Padding(
        padding: const EdgeInsets.only(right: 80),
        child: Image.asset(
          'assets/port1.png',
          fit: BoxFit.cover,
          height: context.percentHeight * 60,
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/code.png',
      height: 25,
    );
  }
}

class SoicalAccounts extends StatelessWidget {
  const SoicalAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      InkWell(
          onTap: () =>
              launch('https://www.fiverr.com/usama_dev08?up_rollout=true'),
          child: Image.asset(
            'assets/fiverr.png',
            height: 20,
          )),
      20.widthBox,
      InkWell(
          onTap: () => launch('https://github.com/usamadev08'),
          child: Image.asset(
            'assets/github.png',
            height: 20,
          )),
      20.widthBox,
      InkWell(
          onTap: () =>
              launch('https://www.linkedin.com/in/usama-khan-494309267/'),
          child: Image.asset(
            'assets/linkedin.png',
            height: 20,
          )),
      20.widthBox,
      InkWell(
          onTap: () => launch('https://www.instagram.com/umar_z3/'),
          child: Image.asset(
            'assets/instagram.png',
            height: 20,
          )),
    ].hStack();
  }
}
