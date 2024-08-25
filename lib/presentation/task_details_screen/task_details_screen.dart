import 'package:day_task/manager/color_manager.dart';
import 'package:day_task/manager/font_manager.dart';
import 'package:day_task/manager/space_manager.dart';
import 'package:day_task/utils/dimensions.dart';
import 'package:day_task/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
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
                Text(
                  'Task Details',
                  style: appFont.f18w600White,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit_calendar_rounded,
                      color: Colors.white,
                    ))
              ],
            ),
            appSpaces.spaceForHeight20,
            Expanded(
                child: ListView(children: [
            const  Text(
                'Real estate app design',
                style: TextStyle(fontFamily: 'pilat',color: Colors.white,fontSize: 18),
              ),
              appSpaces.spaceForHeight15,
              Row(children: [
                Expanded(child: Row(children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: appColors.primary,
                      borderRadius: BorderRadius.circular(2)
                    ),
                    child:const Icon(Icons.calendar_month_outlined),
                  ),
                  appSpaces.spaceForWidth10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Duo date',style: appFont.f11w500White.copyWith(color:const Color(0xff8CAAB9)),),
                    Text('20 JUN',style: appFont.f16w600White,)
                  ],),
                ],),),
                 Expanded(child: Row(children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: appColors.primary,
                      borderRadius: BorderRadius.circular(2)
                    ),
                    child:const Icon(Icons.group_outlined),
                  ),
                  appSpaces.spaceForWidth10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Project team',style: appFont.f11w500White.copyWith(color:const Color(0xff8CAAB9)),),
                     appSpaces.spaceForHeight6,
                     Stack(
                                      children: List.generate(
                                        4,
                                        (index) {
                                          List<String> images = [
                                            'https://w0.peakpx.com/wallpaper/107/46/HD-wallpaper-best-pose-for-profile-for-men-profile-pose-men-best-glasses.jpg',
                                            'https://pics.craiyon.com/2023-07-15/dc2ec5a571974417a5551420a4fb0587.webp',
                                            'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8',
                                            'https://www.befunky.com/images/wp/wp-2021-01-linkedin-profile-picture-after.jpg?auto=avif,webp&format=jpg&width=944'
                                          ];
                                          return Padding(
                                              padding: EdgeInsets.only(
                                                  left: index * 10),
                                              child: CircleAvatar(
                                                  radius: 10,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  child: CircleAvatar(
                                                    radius: 9,
                                                    backgroundImage:
                                                        NetworkImage(
                                                            images[index]),
                                                  )));
                                        },
                                      ),
                                    )
                  ],),
                ],))
              ],),
              appSpaces.spaceForHeight20,
              Text('Project Details',style: appFont.f18w600White,),
              appSpaces.spaceForHeight10,
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",style: appFont.f12w500Black.copyWith(color:const Color(0xffBCCFD8)),)
           , appSpaces.spaceForHeight20,
           Row(
             children: [
               Text('Project Progress',style: appFont.f18w600White,),
               const Spacer(),
                Stack(
                                          children: [
                                            SizedBox(
                                              height: 50,
                                              width: 50,
                                            
                                              child: CircularProgressIndicator(
                          
                                                backgroundColor: Color(0xff2C4653),
                                                value: 0.5,color: appColors.primary,),),

                                                Positioned(
                                                  left: 16,
                                                  top: 16,
                                                  child: Text('50%',style: appFont.f11w500White,))
                                          ],
                                        )
             ],
           ),
           appSpaces.spaceForHeight10,
           Text('All Tasks',style: appFont.f16w600White,),
           ...List.generate(6, (index) {
            List<String>titles=['User interfaces','Api discussion','Database design','User interfaces','Api discussion','Database design'];
             return Container(
              margin:const EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(6),
              height: 57,
              decoration: BoxDecoration(
                color: appColors.primaryGrey,
                borderRadius: BorderRadius.circular(2)
              ),
              child: Row(children: [
                Text(titles[index],style: appFont.f16w600White,),
                const Spacer(),
                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    color: appColors.primary,
                    borderRadius: BorderRadius.circular(2)
                  ),
                  child: Center(child: Container(height: 25,width: 25,decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all()
                  ),child: Center(child:index<=2?const Icon(Icons.done,size: 15,):const SizedBox(),),),),
                )
              ],),
             );
           },),
          //  const SizedBox(height: 100,)
            ]),
            )
          ],
        ),
      )),
      bottomNavigationBar: Container(
        height: 80,
        width: double.infinity,
        decoration:const BoxDecoration(
          color: Color(0xff263238)
        ),
        child: Center(
          child: PrimaryButton(
            height: 50,
            width: screenWidth(context)-100,
            titleStyle: appFont.f14w600Black,
            backgroundColor: appColors.primary,
            title: 'Add Task', onTap: () {
            
          },),
        ),
      ),
    );
  }
}
