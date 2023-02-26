import 'package:doctor_appoinment/controller/servicecontroller.dart';
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
  int listItem = ServiceController().ServiceModelData.length;
  List<bool> selectionStatus = [];
  @override
  void initState() {
    // TODO: implement initState

    selectionStatus = List.generate(listItem, (index) => false);

    super.initState();
  }

  final serviceData = ServiceController();
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
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 6.0,
                            mainAxisSpacing: 8.0),
                    itemCount: serviceData.ServiceModelData.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            for (int i = 0; i < listItem; i++) {
                              if (i == index) {
                                selectionStatus[i] == true
                                    ? selectionStatus[i] = false
                                    : selectionStatus[i] = true;
                              } else {
                                selectionStatus[i] = false;
                              }
                            }
                          });
                          print(
                              'index $index value = ${selectionStatus[index]}');
                        },
                        child: Container(
                          width: 110,
                          height: 103,
                          decoration: BoxDecoration(
                              color: selectionStatus[index]
                                  ? Colors.purple
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 0,
                                    color: Colors.white.withOpacity(0.9),
                                    offset: Offset(-0, -0))
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(serviceData
                                    .ServiceModelData[index].icon
                                    .toString()),
                                color: selectionStatus[index]
                                    ? Colors.white
                                    : Colors.purple,
                                height: 30,
                                width: 27,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                  serviceData.ServiceModelData[index].name
                                      .toString(),
                                  style: TextStyle(
                                      color: selectionStatus[index]
                                          ? Colors.white
                                          : Colors.purple,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      );
                    })),
          ],
        ),
      ),
    ));
  }
}
