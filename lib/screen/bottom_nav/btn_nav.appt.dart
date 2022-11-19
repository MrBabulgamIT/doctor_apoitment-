import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNav_AppointmentPage extends StatefulWidget {
  const BottomNav_AppointmentPage({Key? key}) : super(key: key);

  @override
  State<BottomNav_AppointmentPage> createState() =>
      _BottomNav_AppointmentPageState();
}

class _BottomNav_AppointmentPageState extends State<BottomNav_AppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        "Appointment Page",
        style: TextStyle(fontSize: 30, color: Colors.purple),
      ),
    ));
  }
}
