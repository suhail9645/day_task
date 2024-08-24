import 'package:day_task/manager/color_manager.dart';
import 'package:day_task/manager/font_manager.dart';
import 'package:day_task/manager/space_manager.dart';
import 'package:day_task/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            appSpaces.spaceForHeight20,
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back!',
                      style: appFont.f12w600Black.copyWith(
                        color: appColors.primary,
                      ),
                    ),
                    const Text(
                      'Muhammed Suhail',
                      style: TextStyle(
                          fontFamily: 'pilat',
                          fontSize: 18,
                          color: Colors.white),
                    )
                  ],
                ),
                const Spacer(),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://images.playground.com/ff94af5cba2a48ccbfb9545dbea4034d.jpeg'),
                )
              ],
            ),
            appSpaces.spaceForHeight20,
            Row(
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                        margin: const EdgeInsets.only(right: 15),
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: appColors.fontGrey),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: appColors.primaryGrey,
                            ),
                            hintText: 'Search Tasks',
                            hintStyle: appFont.f14w500Black
                                .copyWith(color: appColors.primaryGrey),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                          ),
                        ))),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: appColors.primary),
                      child: const Center(
                        child: Icon(
                          Icons.filter_alt_outlined,
                          size: 30,
                        ),
                      ),
                    ))
              ],
            ),
            Expanded(
                child: ListView(
              children: [
                Row(
                  children: [
                    Text(
                      'Completed Tasks',
                      style: appFont.f18w600White,
                    ),
                    const Spacer(),
                    Text(
                      'See all',
                      style: appFont.f16w500Black
                          .copyWith(color: appColors.primary),
                    ),
                  ],
                ),
                appSpaces.spaceForHeight10,
                SizedBox(
                  height: 170,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, containerIndex) {
                        List<String> titles = [
                          'Real estate website design',
                          'Finance mobile app design',
                          'Real estate website design',
                          'Finance mobile app design'
                        ];
                        Color containerColor = containerIndex == 0
                            ? appColors.primary
                            : appColors.primaryGrey;
                        Color textColor =
                            containerIndex == 0 ? Colors.black : Colors.white;
                        return Container(
                            padding: const EdgeInsets.all(5),
                            height: 170,
                            width: 180,
                            decoration: BoxDecoration(
                                color: containerColor,
                                borderRadius: BorderRadius.circular(2)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 140,
                                  child: Text(
                                    titles[containerIndex],
                                    maxLines: 3,
                                    style: TextStyle(
                                        fontFamily: 'pilat',
                                        fontSize: 18,
                                        color: textColor),
                                  ),
                                ),
                                appSpaces.spaceForHeight6,
                                Row(
                                  children: [
                                    Text(
                                      'Team Members',
                                      style: appFont.f10w500Black
                                          .copyWith(color: textColor),
                                    ),
                                    const Spacer(),
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
                                                  left: index * 15),
                                              child: CircleAvatar(
                                                  radius: 13,
                                                  backgroundColor:
                                                      containerColor,
                                                  child: CircleAvatar(
                                                    radius: 12,
                                                    backgroundImage:
                                                        NetworkImage(
                                                            images[index]),
                                                  )));
                                        },
                                      ),
                                    )
                                  ],
                                ),
                                appSpaces.spaceForHeight6,
                                Row(
                                  children: [
                                    Text(
                                      'Completed',
                                      style: appFont.f12w500Black
                                          .copyWith(color: textColor),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '100%',
                                      style: appFont.f12w600Black
                                          .copyWith(color: textColor),
                                    )
                                  ],
                                ),
                                appSpaces.spaceForHeight10,
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  child: LinearProgressIndicator(
                                    value: 1,
                                    borderRadius: BorderRadius.circular(5),
                                    color: textColor,
                                  ),
                                )
                              ],
                            ));
                      },
                      separatorBuilder: (context, index) =>
                          appSpaces.spaceForWidth5,
                      itemCount: 4),
                ),
                appSpaces.spaceForHeight20,
                Row(
                  children: [
                    Text(
                      'Ongoing Tasks',
                      style: appFont.f18w600White,
                    ),
                    const Spacer(),
                    Text(
                      'See all',
                      style: appFont.f16w500Black
                          .copyWith(color: appColors.primary),
                    ),
                   
                
                  ],
                ),
                 appSpaces.spaceForHeight10,
                    SizedBox(
                      height:screenHeight(context)-200,
                      width: double.infinity,
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            List<String>titles=['Mobile app wireFrame','Api development','User interface design','Mobile app wireFrame','Api development','User interface design'];
                            List<double>values=[0.7,0.5,0.2,0.7,0.5,0.2];
                            return Container(
                              height: 122,
                              width: double.infinity,
                              padding: const EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: appColors.primaryGrey),
                                  child: Row(children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      Text(titles[index],style: TextStyle(fontFamily: 'pilat',fontSize: 16,color: Colors.white),),
                                      Text('Team members',style: appFont.f11w500White,),
                                      appSpaces.spaceForHeight10,
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
                                                  left: index * 15),
                                              child: CircleAvatar(
                                                  radius: 13,
                                                  backgroundColor:
                                                      appColors.primaryGrey,
                                                  child: CircleAvatar(
                                                    radius: 12,
                                                    backgroundImage:
                                                        NetworkImage(
                                                            images.reversed.toList()[index]),
                                                  )));
                                        },
                                      ),
                                    ),
                                    appSpaces.spaceForHeight10,
                                    Text('Duo on: 20 DEC',style: appFont.f14w600White,)
                                    ],),
                                    const Spacer(),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                      Stack(
                                          children: [
                                            SizedBox(
                                              height: 60,
                                              width: 60,
                                            
                                              child: CircularProgressIndicator(
                          
                                                backgroundColor: Color(0xff2C4653),
                                                value: values[index],color: appColors.primary,),),

                                                Positioned(
                                                  left: 20,
                                                  top: 20,
                                                  child: Text('75%',style: appFont.f11w500White,))
                                          ],
                                        )

                                    ],)
                                  ],),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              appSpaces.spaceForHeight10,
                       
                          itemCount: 6),
                    )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
