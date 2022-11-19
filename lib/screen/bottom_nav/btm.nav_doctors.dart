import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNav_DoctorsPage extends StatefulWidget {
  const BottomNav_DoctorsPage({Key? key}) : super(key: key);

  @override
  State<BottomNav_DoctorsPage> createState() => _BottomNav_DoctorsPageState();
}

class _BottomNav_DoctorsPageState extends State<BottomNav_DoctorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        "Doctors Page",
        style: TextStyle(fontSize: 30, color: Colors.purple),
      ),
    ));
  }
}
