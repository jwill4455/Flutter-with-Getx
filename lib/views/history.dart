import 'package:flutter/material.dart';
import 'package:flutterwithgetx/viewmodels/controller.dart';
import 'package:get/get.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<HistoryScreen> {
  final Controller _controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("History"),
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Text(_controller.records[0].note!),
            Text(_controller.records[1].note!),
            Text(_controller.records[2].note!),
            Text(_controller.records[3].note!),
          ],
        ));
  }
}
