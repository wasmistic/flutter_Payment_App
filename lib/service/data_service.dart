import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataService {

  Future<List<dynamic>> getData() async{
    var info = rootBundle.loadString('assets/json/data.json');
    List<dynamic> data = json.decode(await info);
    return Future.delayed(Duration(seconds: 3),
            ()=>data.map((e) => e).toList()
    );
    // return data.map((e) => e).toList();
  }
}