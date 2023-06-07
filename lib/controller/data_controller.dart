import 'package:get/get.dart';
import 'package:payment_app/service/data_service.dart';

class DataController extends GetxController{
  final service = new DataService();

  List<dynamic> _data = <dynamic>[];
  bool _loading = false;

  List<dynamic> get data => _data;
  bool get loading => _loading;

  @override
  void onReady() {
    _LoadData();
    super.onReady();
  }

  _LoadData()async {
    _loading=true;
    try {
      var info = await service.getData();
      _data.addAll(info);
    } catch (e) {
       print('fail to load json data');
       print(e);
    }finally{
      _loading=false;
    }
    update();
  }
}