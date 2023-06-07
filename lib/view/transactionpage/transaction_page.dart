import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_app/appcolor/app_colors.dart';
import 'package:payment_app/commonwidgets/app_btn.dart';
import 'package:payment_app/commonwidgets/circle_icon.dart';
import 'package:get/get.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(left: 20.w, right:20.w, top:70.h),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/img/paymentbackground.png')
          )
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                height: 60.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/img/success.png')
                    )
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top:10.h, bottom:20.h),
                child: Column(
                  children: [
                    Text(
                      'Success !',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.sp,
                        color: AppColor.mainColor
                      ),
                    ),
                    Text(
                      'Payment is completed for 2 bills',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.bold,
                          fontSize:16.sp,
                          color:Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 155.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(
                    color: Colors.grey,
                    width: 2
                  )
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Container(
                  width: double.maxFinite,
                  // height: 40.h,
                  padding: EdgeInsets.only(right: 15.w, top: 15.h, bottom: 15.h, left:5.h),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                            width: 2,
                            color: Colors.grey,
                          )
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.check_circle, size: 50.sp, color: AppColor.green,),
                          Container(
                            margin: EdgeInsets.only(top:6.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Gas',
                                  style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                    color: AppColor.mainColor,
                                  ),
                                ),
                                Text(
                                  'ID 347628',
                                  style: GoogleFonts.quicksand(
                                    fontSize: 10.sp,
                                    color:Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        '\$3490.00',
                        style: GoogleFonts.quicksand(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColor.mainColor
                        ),
                      ),
                    ],
                  ),
                ),
                    Container(
                      width: double.maxFinite,
                      // height: 40.h,
                      padding: EdgeInsets.only(right: 15.w, top: 15.h, bottom: 15.h, left:5.h),
                      margin: EdgeInsets.only(bottom: 5.h),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                width: 2,
                                color: Colors.grey,
                              )
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.check_circle, size: 50.sp, color: AppColor.green,),
                              Container(
                                margin: EdgeInsets.only(top:6.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'KenGen',
                                      style: GoogleFonts.quicksand(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                        color: AppColor.mainColor,
                                      ),
                                    ),
                                    Text(
                                      'ID 736041',
                                      style: GoogleFonts.quicksand(
                                        fontSize: 10.sp,
                                        color:Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                            '\$670.00',
                            style: GoogleFonts.quicksand(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColor.mainColor
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      // height: 40.h,
                      padding: EdgeInsets.only(right: 15.w, top: 15.h, bottom: 15.h, left:5.h),
                      margin: EdgeInsets.only(bottom: 5.h),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                width: 2,
                                color: Colors.grey,
                              )
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.check_circle, size: 50.sp, color: AppColor.green,),
                              Container(
                                margin: EdgeInsets.only(top:6.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Airtel',
                                      style: GoogleFonts.quicksand(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                        color: AppColor.mainColor,
                                      ),
                                    ),
                                    Text(
                                      'ID 583519',
                                      style: GoogleFonts.quicksand(
                                        fontSize: 10.sp,
                                        color:Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Text(
                            '\$1490.00',
                            style: GoogleFonts.quicksand(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColor.mainColor
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                 ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 18.h),
                child:Column(
                  children: [
                    Text(
                      'Total Amount',
                      style: GoogleFonts.quicksand(
                        fontSize: 16.sp,
                        color:Colors.grey,
                      ),
                    ),
                    Text(
                      '\$4160.00',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.sp,
                          color: AppColor.mainColor
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60.h, bottom: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleIcon(text:'Share', size: 20.sp, icon:Icons.share, show: true, bgcolor: AppColor.mainColor, textcolor:AppColor.mainColor, Iconcolor: Colors.white),
                    SizedBox(width:40.w,),
                    CircleIcon(text:'Print', size: 20.sp, icon:Icons.print, show: true, bgcolor: AppColor.mainColor, textcolor:AppColor.mainColor, Iconcolor: Colors.white),
                  ],
                ),
              ),
              GestureDetector(
                onTap: ()=>Get.back(),
                child: AppButton(text:'Done', textcolor: AppColor.mainColor, bgcolor: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
