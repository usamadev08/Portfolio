import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/footer.dart';
import 'package:portfolio/header.dart';
import 'package:portfolio/middle.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolors.PrimaryColor,
      child: VStack([
        const HeaderScreen(),
        if (context.isMobile) const IntroductionWidget().p16(),
        const MiddleScreen(),
        const FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
