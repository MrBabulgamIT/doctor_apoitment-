import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottonNav_ProfilePage extends StatefulWidget {
  const BottonNav_ProfilePage({Key? key}) : super(key: key);

  @override
  State<BottonNav_ProfilePage> createState() => _BottonNav_ProfilePageState();
}

class _BottonNav_ProfilePageState extends State<BottonNav_ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Profile Page",
          style: TextStyle(fontSize: 30, color: Colors.purple),
        ),
      ),
    );
  }
}
