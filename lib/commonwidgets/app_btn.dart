import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_app/appcolor/app_colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color textcolor;
  final Color bgcolor;
  const AppButton({Key? key, required this.text, required this.textcolor, required this.bgcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      width: double.maxFinite-40,
      height: MediaQuery.of(context).size.height*0.08,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.mainColor,
          width: 2,
        ),
        color: bgcolor,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.quicksand(
              fontSize: 25.sp,
              color: textcolor,
              fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
