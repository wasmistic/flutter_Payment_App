import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../appcolor/app_colors.dart';

class CircleIcon extends StatelessWidget {
  final String text;
  final bool show;
  final IconData icon;
  final Color bgcolor;
  final Color textcolor;
  final Color Iconcolor;
  final double size;
  const CircleIcon({Key? key, required this.text, this.show=false, required this.icon, required this.bgcolor, required this.textcolor, required this.Iconcolor, this.size=25}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width:35.w,
            height:35.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:bgcolor,
            ),
            child: Icon(icon,color:Iconcolor,size:size,),
          ),
          show==true ? Text(
            text,
            style: GoogleFonts.quicksand(
                fontSize: 12.sp,
                color:textcolor,
              fontWeight: FontWeight.w600
            ),
          ) : Container(),
        ],
      ),
    );
  }
}
