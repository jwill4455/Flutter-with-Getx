import 'package:flutterwithgetx/models/record.dart';
import 'package:get/get.dart';

class Controller extends GetxController {

  var records = <Record>[

    Record(dateTime: DateTime.now(), weight: 80, note: 'AAA'),
    Record(dateTime: DateTime.now(), weight: 81, note: 'BBB'),
    Record(dateTime: DateTime.now(), weight: 82, note: 'CCC'),
    Record(dateTime: DateTime.now(), weight: 83, note: 'DDD'),

  ].obs;

}