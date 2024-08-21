import 'package:day_task/manager/color_manager.dart';
import 'package:day_task/manager/font_manager.dart';
import 'package:day_task/manager/image_manger.dart';
import 'package:day_task/manager/space_manager.dart';
import 'package:day_task/widgets/custom_seperator.dart';
import 'package:day_task/widgets/google_button.dart';
import 'package:day_task/widgets/primary_button.dart';
import 'package:day_task/widgets/primary_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ListView(
        children: [
          appSpaces.spaceForHeight20,
          Image.asset(
            appImage.appLogo,
            height: 70,
          ),
          appSpaces.spaceForHeight20,
          Row(
            children: [
              Text(
                'Create your account',
                style: appFont.f22w600White,
              ),
            ],
          ),
          appSpaces.spaceForHeight10,
          Column(
            children: List.generate(
              3,
              (index) {
                List<String> hints=['Full name','Email address','Password'];
                List<IconData>icons=[Icons.person_pin, Icons.person_outlined,Icons.lock_outline_rounded];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: PrimaryTextFormField(
                    controller: TextEditingController(),
                    hint: hints[index],
                    prefixIcon: icons[index],
                    obscure: index == 1,
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Forgot Password ?',
                style: appFont.f16w600Black.copyWith(color: appColors.fontGrey),
              )
            ],
          ),
          appSpaces.spaceForHeight20,
          PrimaryButton(
            title: 'Log In',
            height: 50,
            backgroundColor: appColors.primary,
            titleStyle: appFont.f16w600Black,
            onTap: () {},
          ),
          appSpaces.spaceForHeight20,
      const    CustomSeprator(),
                    appSpaces.spaceForHeight20,

           const  GoogleButton(),

             appSpaces.spaceForHeight20,
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?',style: appFont.f14w500Black.copyWith(color: appColors.fontGrey),),
                Text(' Log In',style: appFont.f14w400Black.copyWith(color: appColors.primary),)

             ],)
        ],
      ),
    )));
  }
}
