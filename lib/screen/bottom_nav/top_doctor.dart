import 'package:doctor_appoinment/controller/topdoctorcontroller.dart';
import 'package:doctor_appoinment/screen/bottom_nav/doctor_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Top_DoctorPage extends StatefulWidget {
  const Top_DoctorPage({Key? key}) : super(key: key);

  @override
  State<Top_DoctorPage> createState() => _Top_DoctorPageState();
}

class _Top_DoctorPageState extends State<Top_DoctorPage> {
  int listItem = TopDoctorController().topdoctormodeldata.length;
  List<bool> selectionStatus = [];
  @override
  void initState() {
    // TODO: implement initState

    selectionStatus = List.generate(listItem, (index) => false);

    super.initState();
  }

  final topdoctordata = TopDoctorController();

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;
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
                      width: 80,
                    ),
                    Text(
                      "Doctor",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(-0, -0))
                        ]),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "All",
                          style: GoogleFonts.nunito(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(-0, -0))
                        ]),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Top Rated",
                          style: GoogleFonts.nunito(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.purple),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(-0, -0))
                        ]),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Most Viewed",
                          style: GoogleFonts.nunito(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.purple),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0,
                              color: Colors.white.withOpacity(0.9),
                              offset: Offset(-0, -0))
                        ]),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Recommended",
                          style: GoogleFonts.nunito(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.purple),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: topdoctordata.topdoctormodeldata.length,
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
                          child: Column(
                            children: [
                              Container(
                                width: width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: selectionStatus[index]
                                      ? Colors.purple
                                      : Colors.white.withOpacity(0.9),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 10,
                                        offset: Offset(-0, -0))
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Row(children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: const Image(
                                              image: AssetImage(
                                                  "images/pdoc.png")),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              topdoctordata
                                                  .topdoctormodeldata[index]
                                                  .name
                                                  .toString(),
                                              style: GoogleFonts.nunito(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: selectionStatus[index]
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              topdoctordata
                                                  .topdoctormodeldata[index]
                                                  .designation
                                                  .toString(),
                                              style: GoogleFonts.nunito(
                                                fontSize: 12,
                                                color: selectionStatus[index]
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              topdoctordata
                                                  .topdoctormodeldata[index]
                                                  .location
                                                  .toString(),
                                              style: GoogleFonts.nunito(
                                                fontSize: 10,
                                                color: selectionStatus[index]
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.alarm,
                                                  color: selectionStatus[index]
                                                      ? Colors.white
                                                      : Colors.black,
                                                  size: 15,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  topdoctordata
                                                      .topdoctormodeldata[index]
                                                      .time
                                                      .toString(),
                                                  style: GoogleFonts.nunito(
                                                    fontSize: 12,
                                                    color:
                                                        selectionStatus[index]
                                                            ? Colors.white
                                                            : Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ]),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: selectionStatus[index]
                                              ? Color.fromARGB(
                                                      255, 230, 221, 232)
                                                  .withOpacity(0.1)
                                              : Colors.white,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(3.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 240, 38, 23),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(3.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        " 4.5 ★",
                                                        style:
                                                            GoogleFonts.nunito(
                                                          fontSize: 12,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(3.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color:
                                                        selectionStatus[index]
                                                            ? Colors.white
                                                            : Colors.purple,
                                                    boxShadow: [
                                                      BoxShadow(
                                                          blurRadius: 0,
                                                          color: Colors.white
                                                              .withOpacity(0.9),
                                                          offset:
                                                              Offset(-0, -0))
                                                    ]),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      "Book Appointment",
                                                      style: GoogleFonts.nunito(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        );
                      })),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
