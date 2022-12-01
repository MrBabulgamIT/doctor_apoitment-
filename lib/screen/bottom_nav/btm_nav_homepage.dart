import 'package:doctor_appoinment/screen/bottom_nav/doctorspage.dart';
import 'package:doctor_appoinment/screen/bottom_nav/nav_dawer.dart';
import 'package:doctor_appoinment/screen/bottom_nav/service_page.dart';
import 'package:doctor_appoinment/screen/bottom_nav/top_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNav_HomePage extends StatefulWidget {
  const BottomNav_HomePage({Key? key}) : super(key: key);

  @override
  State<BottomNav_HomePage> createState() => _BottomNav_HomePageState();
}

class _BottomNav_HomePageState extends State<BottomNav_HomePage> {
  bool _isselected = false;
  bool _isselected1 = false;
  bool _isselected2 = false;
  bool _isselected4 = false;
  bool _isselected5 = false;
  bool _isselected6 = false;

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;

    return Scaffold(
        backgroundColor: Colors.purple.withOpacity(0.1),
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu_rounded,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Center(
              child: Text(
            "Hello, Ishtiuq",
            style: GoogleFonts.nunito(color: Colors.black),
          )),
        ),
        drawer: Drawer(
          child: Nav_Drawer(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Find your medical \nSolution!",
                    style: GoogleFonts.nunito(
                        fontSize: 24,
                        color: Color(0xff0f172a),
                        fontWeight: FontWeight.w700)),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: width,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 95,
                            offset: Offset(40, 40))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.purple,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            onChanged: ((value) => {}),
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.purple),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: width,
                  decoration: BoxDecoration(
                      color: Color(0xff7E22CD),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text("Doctor Appointment",
                            style: GoogleFonts.nunito(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: 3,
                        ),
                        Text("Search your doctor and book an appointment here",
                            style: GoogleFonts.nunito(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("Book Appointment",
                                style: GoogleFonts.nunito(
                                    fontSize: 12, fontWeight: FontWeight.w700)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 30,
                      height: 12,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(15)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Category (Specialties)",
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700)),
                    GestureDetector(
                      onTap: () {
                        Get.to(DoctorPage());
                      },
                      child: Row(
                        children: [
                          Text("view All",
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(35)),
                            child: Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isselected = _isselected ? false : true;
                          });
                        },
                        child: Container(
                          height: 145,
                          width: 125,
                          decoration: BoxDecoration(
                              color: _isselected ? Colors.purple : Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage("images/rea_1.png"),
                                  width: 125,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("General Medicine",
                                    style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700)),
                                Text("1200 Doctors",
                                    style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isselected = _isselected ? false : true;
                          });
                        },
                        child: Container(
                          height: 145,
                          width: 125,
                          decoration: BoxDecoration(
                              color: _isselected ? Colors.purple : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 95,
                                    offset: Offset(40, 40))
                              ],
                              borderRadius: BorderRadius.circular(15)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage("images/rea_2.png"),
                                  width: 125,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Internal Medicine",
                                    style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700)),
                                Text("800 Doctors",
                                    style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isselected = _isselected ? false : true;
                          });
                        },
                        child: Container(
                          height: 145,
                          width: 125,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 95,
                                    offset: Offset(40, 40))
                              ],
                              color: _isselected ? Colors.purple : Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage("images/rea_3.png"),
                                  width: 125,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Internal Medicine",
                                    style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700)),
                                Text("650 Doctors",
                                    style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Service",
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700)),
                    GestureDetector(
                      onTap: () {
                        Get.to(ServicePage());
                      },
                      child: Row(
                        children: [
                          Text("view All",
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(35)),
                            child: const Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            height: 27,
                            width: 30,
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
                    SizedBox(
                      width: 10,
                    ),
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
                            image: AssetImage("images/hosp.png"),
                            color: Colors.white,
                            height: 27,
                            width: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Hospital",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
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
                            image: AssetImage("images/med.png"),
                            color: Colors.white,
                            height: 27,
                            width: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Medicine",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Doctors",
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w700)),
                    GestureDetector(
                      onTap: () {
                        Get.to(Top_DoctorPage());
                      },
                      child: Row(
                        children: [
                          Text("view All",
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(35)),
                            child: const Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  height: 101,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10,
                          offset: Offset(-0, -0))
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(image: AssetImage("images/pdoc.png")),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. Ishtiuq Ahmed Chowdhury",
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "General Practitioner",
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Somerian Clinic - Dubai",
                            style: GoogleFonts.nunito(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 240, 38, 23),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        " 4.5 * ",
                                        style: GoogleFonts.nunito(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.alarm,
                                color: Colors.black,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "10:00  AM-  8.45 PM",
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  height: 101,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 10,
                          offset: Offset(-0, -0))
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(image: AssetImage("images/pdoc.png")),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. Ishtiuq Ahmed Chowdhury",
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "General Practitioner",
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Somerian Clinic - Dubai",
                            style: GoogleFonts.nunito(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 240, 38, 23),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        " 4.5 * ",
                                        style: GoogleFonts.nunito(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.alarm,
                                color: Colors.black,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "10:00  AM-  8.45 PM",
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ));
  }
}
