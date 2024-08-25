import 'package:day_task/manager/color_manager.dart';
import 'package:day_task/presentation/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:day_task/presentation/chat_screen/chat_screen.dart';
import 'package:day_task/presentation/messages_screen/messages_screen.dart';
import 'package:day_task/presentation/home_screen/home_screen.dart';
import 'package:day_task/presentation/login_screen/login_screen.dart';
import 'package:day_task/presentation/registration_screen/registration_screen.dart';
import 'package:day_task/presentation/task_details_screen/task_details_screen.dart';
import 'package:day_task/presentation/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const DayTask());
}

class DayTask extends StatelessWidget {
  const DayTask({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DayTask',
      theme: ThemeData(
        scaffoldBackgroundColor:Color(0xff212832),
       textTheme: GoogleFonts.interTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor:appColors.primary),
        useMaterial3: true,
      ),
      home: ChatScreen()
    );
  }
}
