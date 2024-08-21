
import 'package:day_task/manager/font_manager.dart';
import 'package:day_task/manager/space_manager.dart';
import 'package:flutter/material.dart';

import '../manager/color_manager.dart';

class PrimaryTextFormField extends StatefulWidget {
  const PrimaryTextFormField({
    super.key,
    required this.controller,
    required this.hint, this.obscure, this.prefixIcon,
  });

  final TextEditingController controller;
  final String hint;
  final bool? obscure;
  final IconData? prefixIcon;
  @override
  State<PrimaryTextFormField> createState() => _PrimaryTextFormFieldState();
}

class _PrimaryTextFormFieldState extends State<PrimaryTextFormField> {

  bool show=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        Text(widget.hint,style: appFont.f16w500white.copyWith(color:appColors.fontGrey),),
        appSpaces.spaceForHeight10,
        TextFormField(
          obscureText:widget.obscure!=null&&widget.obscure==true? !show:false,
          controller: widget.controller,
          style: appFont.f16w500white,
          decoration: InputDecoration(
            prefixIcon:widget.prefixIcon!=null? Icon(widget.prefixIcon,color: Colors.white,):null,
            suffixIcon:widget.obscure!=null&&widget.obscure==true? GestureDetector(
              onTap: () {
                setState(() {
                  show=!show;
                });
              },
              child: Icon(show?Icons.visibility_off:Icons.visibility,color: Colors.white,)):null,
            hintText: widget.hint,
            hintStyle: appFont.f16w500white,
            filled: true,
            fillColor:const Color(0xff455A64),
            
            contentPadding:const EdgeInsets.symmetric(horizontal: 10,vertical: 13),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2)),
                focusedBorder:const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white,width: 0.5)
                ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide:
                    const BorderSide(color: Colors.red)),
           
          ),
          
          validator: (value) {
            if (value == null || value == '') {
              return 'This field is required';
            }
            return null;
          },
        ),
      ],
    );
  }
}
