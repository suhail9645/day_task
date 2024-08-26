import 'package:day_task/manager/color_manager.dart';
import 'package:day_task/manager/font_manager.dart';
import 'package:day_task/manager/space_manager.dart';
import 'package:flutter/material.dart';
class ScheduleScreen extends StatelessWidget {
 const ScheduleScreen({super.key});
 @override
 Widget build(BuildContext context) {
 return Scaffold(

 body: SafeArea(child: Padding(
   padding:const EdgeInsets.symmetric(horizontal: 15),
   child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                Text(
                  'Schedule',
                  style: appFont.f18w600White,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_box_outlined,
                      color: Colors.white,
                    ))
              ],
            ),
            appSpaces.spaceForHeight20,
            Text('August',style: appFont.f18w600White,),

            appSpaces.spaceForHeight10,
            SizedBox(
              height: 70,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  /// for ui purponse only
                  List<String>day=['Mon','Tue','Wed','Thu','Fri','Sat','Sun'];
                return Container(
                  width: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: index==4?appColors.primary:appColors.secondaryGrey
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Text("${index+1}",style: appFont.f18w600White.copyWith(color: index==4?Colors.black:Colors.white),),
                   
                    Text(day[index%7],style: appFont.f11w500White.copyWith(color: index==4?Colors.black:Colors.white),)
                  ],),
                );
              }, separatorBuilder: (context, index) => appSpaces.spaceForWidth10, itemCount: 30),
            ),
            appSpaces.spaceForHeight20,
            Text("Todays's Tasks",style: appFont.f18w600White,),
            appSpaces.spaceForHeight10,
            Expanded(child: ListView.separated(itemBuilder: (context, index) {
              List<String> tasks=['Api integration','User interface design','Meeting with backend team','Api integration','User interface design','Meeting with backend team'];
              return Container(
                height: 72,
                decoration: BoxDecoration(
                  color: appColors.secondaryGrey,
                  borderRadius: BorderRadius.circular(2)
                ),
                child: Row(children: [
                  ColoredBox(color: appColors.primary,child:const SizedBox(height: 72,width: 10,),),
                  appSpaces.spaceForWidth20,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(tasks[index],style: appFont.f16w600White,),
                    appSpaces.spaceForHeight6,
                    Text('From Stock market project',style: appFont.f14w400Black.copyWith(color: appColors.fontGrey),)

                  ],),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Worked Hours',style: appFont.f12w500Black.copyWith(color: appColors.fontGrey),),
                    appSpaces.spaceForHeight6,
                    Text('12 Hours',style: appFont.f14w600Black.copyWith(color: appColors.primary),)

                  ],),
                  appSpaces.spaceForWidth10
                ],),
              );
            }, separatorBuilder: (context, index) => appSpaces.spaceForHeight15, itemCount: 6))

   ],),
 )),
 );
 }
}