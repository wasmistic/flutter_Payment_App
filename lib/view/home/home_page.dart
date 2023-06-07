import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_app/appcolor/app_colors.dart';
import 'package:get/get.dart';
import 'package:payment_app/controller/data_controller.dart';
import 'package:payment_app/route/app_routes.dart';
import '../../commonwidgets/app_btn.dart';
import '../../commonwidgets/circle_icon.dart';
import 'dotted_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  DataController _controller = Get.put(DataController());

  @override

  Widget build(BuildContext context) {
    print('loaded object');
    print(_controller.data);
    print(' object loaded');
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            _TopContainerBg(),
            _MiddleLayout(),
            _BottomButtonSection(),
          ],
        ),
      ),
    );
  }
  _TopContainerBg(){
    return Container(
      width: double.maxFinite,
      height: 270.h,
      decoration: BoxDecoration(
        // border: Border.all(
        //   color: Colors.redAccent,
        //   width: 3,
        // ),
      ),
      child: Stack(
        children: [
          _TopBgSection(),
          _TopBottomBgSection(),
          _TopButtonSection(),
          _TopTextSection(),
          _TopTextSecondSection(),
        ],
      ),
    );
  }
  _MiddleLayout(){
    return Positioned(
       top: 280.h,
        left: 0,
        right: 0,
        bottom: 0,
        child:GetBuilder<DataController>(
          builder: (controller){
            print('loading value');
            print(controller.loading);
            if(controller.loading==true){
              return Container(
                width: 170.w,
                height: 170.h,
                child: Center(
                  child: CircularProgressIndicator(
                    color: AppColor.mainColor,
                    strokeWidth: 3,
                  ),
                ),
              );
            }else {
              return ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.data.length,
                  itemBuilder:(_,index){
                    return  Container(
                      width: double.maxFinite-20,
                      height: 100.h,
                      margin: EdgeInsets.only(bottom: 15.h,right: 20.w),
                      padding: EdgeInsets.only(top:10.h,bottom: 10.h,left: 10.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.r),
                          bottomRight: Radius.circular(10.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFd8dbe0),
                            offset: Offset(1,1),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 50.w,
                                    height: 45.h,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage('assets/img/'+ controller.data[index]["Img"])
                                        ),
                                        borderRadius: BorderRadius.circular(5.r),
                                        border: Border.all(
                                          color: AppColor.halfOval,
                                          width: 2,
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5.h,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.data[index]["Brand"],
                                        style: GoogleFonts.quicksand(
                                            fontSize: 16.sp,
                                            color: AppColor.mainColor,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(
                                        'ID' +' '+controller.data[index]["ID"],
                                        style: GoogleFonts.quicksand(
                                            fontSize: 14.sp,
                                            color: AppColor.halfOval,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              DottedText(text: controller.data[index]["More"], textcolor:AppColor.green,)
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      controller.data[index]["Status"]=! controller.data[index]["Status"];
                                      controller.refresh();
                                    },
                                    child: Container(
                                      width: 75.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                          color: controller.data[index]["Status"] ? AppColor.green : AppColor.selectBackground,
                                          borderRadius: BorderRadius.circular(20.r)
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Select',
                                          style: GoogleFonts.quicksand(
                                            fontWeight: FontWeight.w700,
                                            color:controller.data[index]["Status"]? Colors.white : AppColor.selectColor,
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    '\$'+controller.data[index]["Price"],
                                    style: GoogleFonts.quicksand(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.mainColor
                                    ),
                                  ),
                                  // SizedBox(height: 5.h,),
                                  Text(
                                    controller.data[index]["Due"],
                                    style: GoogleFonts.quicksand(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.halfOval
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 5.w,
                                height: 35.h,
                                decoration: BoxDecoration(
                                    color: AppColor.halfOval,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.r),
                                      bottomLeft: Radius.circular(30.r),
                                    )
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }
              );
            }
          },
        ),
    );
  }
  _BottomButtonSection(){
    return Positioned(
      bottom: 10.h,
        left: 0,
        right: 0,
        child: GestureDetector(
          onTap: ()=>Get.toNamed(AppRoute.getTrans()),
          child: AppButton(text: 'Pay all bills', textcolor:Colors.white, bgcolor: AppColor.mainColor,),
        ),
    );
  }

  _TopBgSection(){
    return Positioned(
      top: 0,
        right: 0,
        left: 0,
        child: Container(
          width: double.maxFinite,
          height: 260.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/background.png')
              )
          ),
        )
    );
  }
  _TopBottomBgSection(){
    return Positioned(
      bottom:3.h,
      right:-20,
      left:0,
      child: Container(
        width: double.maxFinite,
        height: 90.h,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/img/curve.png')
          )
        ),
      )
    );
  }
  _TopButtonSection(){
    return Positioned(
      bottom: 16.h,
        right: 40.w,
        child: GestureDetector(
          onTap: (){
            _ShowModal();
          },
          child: Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/lines.png')
              ),
              boxShadow: [
                BoxShadow(
                    color: AppColor.halfOval.withOpacity(0.2),
                    blurRadius: 2,
                    spreadRadius: 5,
                    offset: Offset(1,1)
                )
              ],
            ),
          ),
        ),
    );
  }
  _TopTextSection(){
    return Positioned(
        top: 55.h,
        left: 20.w,
        child: Text(
          'My Bills',
          style: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold,
              fontSize: 60.sp,
              color: Colors.white
          ),
        ),
        );
  }
  _TopTextSecondSection(){
    return Positioned(
      top: 60.h,
      left: 20.w,
      child: Text(
        'My Bills',
        style: GoogleFonts.quicksand(
            fontWeight: FontWeight.bold,
            fontSize: 60.sp,
            color: Colors.white.withOpacity(0.5)
        ),
      ),
    );
  }


   _ShowModal(){
    return showModalBottomSheet<dynamic>(
      isScrollControlled: true,
        backgroundColor: Colors.transparent,
        barrierColor:Colors.transparent,
        context: context,
        builder:(_){
          return Container(
            height: 480.h,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                    child: Container(
                      height: 430.h,
                      width: MediaQuery.of(context).size.width,
                      color: Color(0xFFeef1f4).withOpacity(0.7),
                    )
                ),
                Positioned(
                    right: 35.w,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 7.h),
                      width: 50.w,
                      height: 250.h,
                      decoration: BoxDecoration(
                          color: AppColor.mainColor,
                          borderRadius: BorderRadius.circular(29.r)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         GestureDetector(
                           onTap: ()=>Navigator.pop(context),
                           child:  CircleIcon(text: '', icon: Icons.cancel_rounded, size: 30.sp, bgcolor:Colors.white, textcolor:Colors.white, Iconcolor: AppColor.mainColor,),
                         ),
                          GestureDetector(
                            onTap: ()=>Navigator.pop(context),
                            child: CircleIcon(text: 'Add bill', icon: Icons.add, size: 30.sp, show: true, bgcolor:Colors.white, textcolor:Colors.white, Iconcolor: AppColor.mainColor,),
                          ),
                          GestureDetector(
                            onTap: ()=>Navigator.pop(context),
                            child:  CircleIcon(text: 'History', icon: Icons.history, size: 30.sp, show: true, bgcolor:Colors.white, textcolor:Colors.white, Iconcolor: AppColor.mainColor,),
                          ),
                          SizedBox(height: 20.h,)
                        ],
                      ),
                    )
                ),
              ],
            ),
          );
        });
  }
}
