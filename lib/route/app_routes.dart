import 'package:get/get.dart';

import '../view/home/home_page.dart';
import '../view/transactionpage/transaction_page.dart';



class AppRoute{
  static String home = '/';
  static String transaction = '/transaction';
  // static String addTask = '/addTask';
  // static String updateTask = '/updateTask';
  // static String singleTask = '/singleTask';

  static String getHome()=>home;
  static String getTrans()=>transaction;


  static List<GetPage> routes = [
    GetPage(name: home, page:()=>const HomePage()),
    GetPage(name: transaction, page:()=>const TransactionPage(), transition:Transition.zoom, transitionDuration: Duration(milliseconds:500)),

    // GetPage(name: singleTask, page:(){
    //   DocumentSnapshot documentSnapshot = Get.arguments;
    //   return SingleTask(documentSnapshot:documentSnapshot);
    // },transition:Transition.zoom, transitionDuration: Duration(milliseconds:500)),
  ];

}