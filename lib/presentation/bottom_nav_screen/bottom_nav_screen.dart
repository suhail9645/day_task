import 'package:day_task/manager/color_manager.dart';
import 'package:day_task/manager/font_manager.dart';
import 'package:day_task/manager/space_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
          child: Center(
        child: Text('bootoom'),
      )),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xff263238)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(5,(index) {
            List<String>titles=['Home','Chat','','Calendar','Notification'];
            List<IconData>icons=[Icons.home_outlined,Icons.chat_bubble_outline_rounded,Icons.abc,Icons.calendar_month,Icons.notifications_none];

          return index!=2?Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex=index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(icons[index],color:index==currentIndex?appColors.primary: appColors.fontGrey,),
                appSpaces.spaceForHeight6,
                Text(titles[index],style: appFont.f11w500White.copyWith(color:index==currentIndex?appColors.primary:appColors.fontGrey ),)
              ],),
            ),
          ):GestureDetector(
            onTap: () {
              setState(() {
                currentIndex=index;
              });
            },
            child: Container(
             
              height: 55,
              width: 55,
              decoration: BoxDecoration( color: appColors.primary,borderRadius: BorderRadius.circular(2)),
              child: Center(child: Icon(Icons.add_box_outlined,color: Colors.black,),),
            ),
          );
        },),),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedFontSize: 0,
      //   type: BottomNavigationBarType.fixed,
      //   items: List.generate(5, (index) {
      //   return BottomNavigationBarItem( icon:index==2?Container(
      //     color: Colors.amber,
      //     height: 40,

      //   ):Icon(Icons.home),label: index!=2?'Home':'');
      // },)),
    );
  }
}
