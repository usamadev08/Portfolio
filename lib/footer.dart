import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/header.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Got a project?\n Let's talk.".text.center.white.xl2.make(),
              10.heightBox,
              "usama.dev08@gmail.com"
                  .text
                  .color(Color.fromARGB(255, 232, 238, 119))
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Got a project?\n Let's talk.".text.center.white.xl2.make(),
              10.widthBox,
              "usama.dev08@gmail.com"
                  .text
                  .color(Color.fromARGB(255, 232, 238, 119))
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentHeight * 70).scale150().p16(),
        ),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        "Thanks for scrolling, ".richText.white.withTextSpanChildren(
            ["that's all folks.".textSpan.gray500.make()]).make(),
        10.heightBox
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
