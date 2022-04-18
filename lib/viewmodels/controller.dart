import 'package:flutterwithgetx/models/record.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var records = <Record>[

  ].obs;

  void addRecord() {
     records.add(Record(dateTime: DateTime.now(), weight: 80, note: 'XXX'));
  }

  void deleteRecord(Record record) {
    records.remove(record);
  }
}
