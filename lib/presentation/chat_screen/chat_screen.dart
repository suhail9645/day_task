import 'package:day_task/manager/color_manager.dart';
import 'package:day_task/manager/font_manager.dart';
import 'package:day_task/manager/space_manager.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 45,
        width: 140,
        decoration: BoxDecoration(
          color: appColors.primary,
          borderRadius: BorderRadius.circular(2)
        ),
        child: Center(child: Text('New Chat',style: appFont.f14w600Black,)),
      ),
      body: SafeArea(
          child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 15),
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
                  'Messages',
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
            appSpaces.spaceForHeight10,
            Row(
              children: List.generate(
                2,
                (index) {
                  List<String> titles = ['Chat', 'Groups'];

                  return Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      height: 45,
                      decoration: BoxDecoration(
                          color: index == 0
                              ? appColors.primary
                              : const Color(0xff263238),
                          borderRadius: BorderRadius.circular(2)),
                      child: Center(
                        child: Text(
                          titles[index],
                          style: appFont.f14w600Black.copyWith(
                              color: index == 0 ? Colors.black : Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            appSpaces.spaceForHeight20,
            Expanded(child: ListView.separated(itemBuilder: (context, index) {
               List<String> images = [
                                            'https://w0.peakpx.com/wallpaper/107/46/HD-wallpaper-best-pose-for-profile-for-men-profile-pose-men-best-glasses.jpg',
                                            'https://pics.craiyon.com/2023-07-15/dc2ec5a571974417a5551420a4fb0587.webp',
                                            'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8',
                                            'https://www.befunky.com/images/wp/wp-2021-01-linkedin-profile-picture-after.jpg?auto=avif,webp&format=jpg&width=944',
                                           'https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?90af0c8',
                                            'https://www.befunky.com/images/wp/wp-2021-01-linkedin-profile-picture-after.jpg?auto=avif,webp&format=jpg&width=944'
                                          
                                          ];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(images[index]),
                ),
                title: Text('Olivia watson',style: appFont.f14w600White,),
                subtitle: Text('Hi please check task list ..',style: appFont.f12w500Black.copyWith(color:const Color(0xffB8B8B8)),),
                trailing: index<=2?Icon(Icons.circle,size: 15,color: appColors.primary,):Text('Yesterday',style: appFont.f11w500White,),
              );
            }, separatorBuilder: (context, index) => appSpaces.spaceForHeight6, itemCount: 6))
          ],
        ),
      )),
    );
  }
}
