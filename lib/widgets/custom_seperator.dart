


import 'package:day_task/manager/color_manager.dart';
import 'package:day_task/manager/font_manager.dart';
import 'package:flutter/material.dart';

class CustomSeprator extends StatelessWidget {
  const CustomSeprator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) {
          return index != 1
              ? Expanded(
                  child: ColoredBox(
                  color: appColors.fontGrey,
                  child:const SizedBox(
                    height: 1,
                  ),
                ))
              : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text('Or continue with',style: appFont.f14w500Black.copyWith(color: appColors.fontGrey),),
              );
        },
      ),
    );
  }
}