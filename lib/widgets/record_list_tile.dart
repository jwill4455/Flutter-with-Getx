import 'package:flutter/material.dart';
import 'package:flutterwithgetx/models/record.dart';
import 'package:flutterwithgetx/viewmodels/controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RecordListTile extends StatelessWidget {
  final Record record;

  RecordListTile({Key? key, required this.record}) : super(key: key);
  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
        child: ListTile(
          leading: _buildDate(),
          title: _buildWeight(),
          trailing: _buildIcons(),
        ),
      ),
    );
  }

  Row _buildIcons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.edit,
              color: Colors.grey,
            )),
        IconButton(
            onPressed: () {
              _controller.deleteRecord(record);
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            )),
      ],
    );
  }

  Center _buildWeight() {
    return Center(
        child: Text(
      '${record.weight}',
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ));
  }

  Text _buildDate() => Text(DateFormat('EEE, MMM, d').format(record.dateTime));
}
