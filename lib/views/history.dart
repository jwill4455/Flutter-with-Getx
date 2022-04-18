import 'package:flutter/material.dart';
import 'package:flutterwithgetx/models/record.dart';
import 'package:flutterwithgetx/viewmodels/controller.dart';
import 'package:get/get.dart';

import '../widgets/record_list_tile.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<HistoryScreen> {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    List<Record> records = _controller.records;

    return Obx(
      () => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("History"),
          actions: [
            IconButton(
              onPressed: _controller.addRecord,
              icon: const Icon(Icons.add),
            )
          ],
        ),
        body: records.isEmpty
            ? const Center(child: Text('Please Add Some Records'))
            : ListView(
                physics: const BouncingScrollPhysics(),
                children: records
                    .map((record) => RecordListTile(record: record))
                    .toList()),
      ),
    );
  }
}
