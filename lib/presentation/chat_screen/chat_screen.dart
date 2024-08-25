import 'package:day_task/manager/color_manager.dart';
import 'package:day_task/manager/font_manager.dart';
import 'package:day_task/manager/space_manager.dart';
import 'package:day_task/utils/dimensions.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
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
                SizedBox(
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8'),
                      ),
                      appSpaces.spaceForWidth10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Olivia John',
                            style: appFont.f14w600White,
                          ),
                          Text(
                            'Online',
                            style: appFont.f12w500Black
                                .copyWith(color: const Color(0xffB8B8B8)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit_calendar_rounded,
                      color: Colors.white,
                    ))
              ],
            ),
            appSpaces.spaceForHeight10,
            Expanded(child: ListView(
              children: List.generate(7, (index) {
                List<String>messages=['Hi Please check the new Task','Ok, Let me check','Got it Tanks',"I will share screenshots and Documents after complete.",'Please upload screenshots','','Good Great Work',];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 9),
                  child: Row(
                    mainAxisAlignment: index==0||index==4||index==6?MainAxisAlignment.start:MainAxisAlignment.end,
                    children: [
                    Container(
                      height: index==5?160:null,
                      width: index==5?210:null,
                      padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                      
                      constraints: BoxConstraints(
                        maxWidth: screenWidth(context)-100,
                        minWidth: 100
                      ),
                      decoration: BoxDecoration(
                        color:index==0||index==4||index==6?appColors.secondaryGrey: appColors.primary,
                        borderRadius: BorderRadius.circular(2),
                      image:index==5 ?const DecorationImage(image: NetworkImage('https://i.ytimg.com/vi/QnDit2JQTdg/sddefault.jpg'),fit: BoxFit.fill): null
                      ),
                      child: Text(messages[index],style: appFont.f12w600Black.copyWith(color: index==0||index==4||index==6?Colors.white:Colors.black),),
                    )
                  ],),
                );
              },),
            ))
          ],
        ),
      )),
      bottomNavigationBar: SizedBox(
        height: 100,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Row(
            children: [
              Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.only(right: 10),
                    height: 55,
                    decoration: BoxDecoration(color: appColors.secondaryGrey),
                    child: Row(
                      children: [
                        Icon(
                          Icons.widgets_outlined,
                          color: appColors.primary,
                        ),
                        appSpaces.spaceForWidth10,
                        Text(
                          'Type a message',
                          style: appFont.f14w500Black
                              .copyWith(color: appColors.fontGrey),
                        ),
                        const Spacer(),
                        Icon(Icons.send_outlined,color: appColors.primary,)
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(color: appColors.secondaryGrey),
                    child: Center(child: Icon(Icons.mic_rounded,color: appColors.primary,),),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
