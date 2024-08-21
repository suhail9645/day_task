
import 'package:day_task/manager/font_manager.dart';
import 'package:flutter/material.dart';
/// These widget used in login and register page
class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(child: Container(
     height: 55,
     width: double.infinity,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(2),
       border: Border.all(color: Colors.white)
     ),
     child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
      const Icon(Icons.g_mobiledata,size: 40,color: Colors.white,),
            
       Text('Google',style: appFont.f18w600White,)
     ],),
    ),);
  }
}
