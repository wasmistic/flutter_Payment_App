import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DottedText extends StatelessWidget {
  final String text;
  final Color textcolor;
  const DottedText({Key? key, required this.text, required this.textcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size textsize = _textsize(text);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.quicksand(
            fontSize: 12.sp,
            color: textcolor,
            fontWeight: FontWeight.w600
          ),
          softWrap: false,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            for(int i=0; i<textsize.width/3; i++)
              i.isEven ? Container(
                width: 3.w,
                height: 2.h,
                color: textcolor,
              ) : Container(
                width: 3.w,
                height: 2.h,
                color:Colors.white,
              )
          ],
        )
      ],
    );
  }

  Size _textsize(String text){
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: GoogleFonts.quicksand(
          fontSize: 12.sp,
          color: textcolor,
          fontWeight: FontWeight.w700,
        ),
      ),
      maxLines:1,
      textDirection:TextDirection.ltr,

    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
