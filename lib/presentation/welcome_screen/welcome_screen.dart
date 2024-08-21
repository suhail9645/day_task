import 'package:day_task/manager/color_manager.dart';
import 'package:day_task/manager/font_manager.dart';
import 'package:day_task/manager/image_manger.dart';
import 'package:day_task/manager/space_manager.dart';
import 'package:day_task/utils/dimensions.dart';
import 'package:day_task/widgets/primary_button.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  appImage.appLogo,
                  scale: 6,
                ),
              ],
            ),
            appSpaces.spaceForHeight20,
            Container(
              height: screenWidth(context) - 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3),
                  image: DecorationImage(
                      image: AssetImage(
                        appImage.welcomeImage,
                      ),
                      fit: BoxFit.fitHeight)),
            ),
            appSpaces.spaceForHeight20,
            RichText(
              text: TextSpan(
                  text: 'Manage your Task with',
                  style: const TextStyle(
                      fontFamily: 'pilat',
                      height: 1,
                      fontSize: 50,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600),
                  children: [
                    TextSpan(
                        text: ' DayTask',
                        style: TextStyle(color: appColors.primary))
                  ]),
            ),
            appSpaces.spaceForHeight30,
            PrimaryButton(
              title: 'Lets Start',
              height: 55,
              backgroundColor: appColors.primary,
              titleStyle: appFont.f14w600Black,
              onTap: () {},
            )
          ],
        ),
      )),
    );
  }
}
