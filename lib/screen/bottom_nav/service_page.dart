import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.purple.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 42,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage("images/arrow_icon.png"),
                          height: 15,
                          width: 8,
                          color: Colors.purple,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Back",
                          style: GoogleFonts.nunito(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.purple),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "Service",
                    style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  Container(
                    width: 110,
                    height: 103,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/doct.png"),
                          color: Colors.white,
                          height: 30,
                          width: 27,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Doctor",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 103,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(-0, -0))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/hosp.png"),
                          color: Colors.purple,
                          height: 30,
                          width: 27,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Hospital",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 103,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(-0, -0))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/med.png"),
                          color: Colors.purple,
                          height: 30,
                          width: 27,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Medicine",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 103,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/doct.png"),
                          color: Colors.purple,
                          height: 30,
                          width: 27,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Doctor",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 103,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(-0, -0))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/hosp.png"),
                          color: Colors.purple,
                          height: 30,
                          width: 27,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Hospital",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 103,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(-0, -0))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/med.png"),
                          color: Colors.purple,
                          height: 30,
                          width: 27,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Medicine",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 103,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/doct.png"),
                          color: Colors.purple,
                          height: 30,
                          width: 27,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Doctor",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 103,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(-0, -0))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/hosp.png"),
                          color: Colors.purple,
                          height: 30,
                          width: 27,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Hospital",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 103,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(-0, -0))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/med.png"),
                          color: Colors.purple,
                          height: 30,
                          width: 27,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Medicine",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 103,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/doct.png"),
                          color: Colors.purple,
                          height: 30,
                          width: 27,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Doctor",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 103,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(-0, -0))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/hosp.png"),
                          color: Colors.purple,
                          height: 30,
                          width: 27,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Hospital",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 103,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(-0, -0))
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/med.png"),
                          color: Colors.purple,
                          height: 30,
                          width: 27,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Medicine",
                            style: TextStyle(
                                color: Colors.purple,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
