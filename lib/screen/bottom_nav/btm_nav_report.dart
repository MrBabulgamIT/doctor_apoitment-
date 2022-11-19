import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNav_ReportPage extends StatefulWidget {
  const BottomNav_ReportPage({Key? key}) : super(key: key);

  @override
  State<BottomNav_ReportPage> createState() => _BottomNav_ReportPageState();
}

class _BottomNav_ReportPageState extends State<BottomNav_ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        "Report Page",
        style: TextStyle(fontSize: 30, color: Colors.purple),
      ),
    ));
  }
}
