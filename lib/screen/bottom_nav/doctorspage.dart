import 'package:doctor_appoinment/controller/modelcontroller.dart';
import 'package:doctor_appoinment/screen/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorPage extends StatefulWidget {
  DoctorPage({Key? key}) : super(key: key);

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  // Color _containerColor = _isSelected ? Colors.purple : Colors.white;
  bool _isSelected = false;
  int listItem = ModelController().modelControolerData.length;
  List<bool> selectionStatus = [];
  @override
  void initState() {
    // TODO: implement initState

    selectionStatus = List.generate(listItem, (index) => false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;

    final doctordata = ModelController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          color: Colors.white.withOpacity(0.9),
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
                      "Category (Specialties)",
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
                      itemCount: doctordata.modelControolerData.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 4.0,
                              mainAxisSpacing: 4.0),
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
                            height: 130,
                            decoration: BoxDecoration(
                              color: selectionStatus[index]
                                  ? Colors.purple
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    image: AssetImage(doctordata
                                        .modelControolerData[index].image
                                        .toString()),
                                    fit: BoxFit.cover,
                                    width: 173,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                    doctordata
                                        .modelControolerData[index].titleName
                                        .toString(),
                                    style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700)),
                                Text(
                                    doctordata
                                        .modelControolerData[index].subTitle
                                        .toString(),
                                    style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
