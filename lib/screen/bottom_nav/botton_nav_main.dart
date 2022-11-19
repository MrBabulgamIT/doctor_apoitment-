import 'package:doctor_appoinment/screen/bottom_nav/btm.nav_doctors.dart';
import 'package:doctor_appoinment/screen/bottom_nav/btm_nav_homepage.dart';
import 'package:doctor_appoinment/screen/bottom_nav/btm_nav_profile.dart';
import 'package:doctor_appoinment/screen/bottom_nav/btm_nav_report.dart';
import 'package:doctor_appoinment/screen/bottom_nav/btn_nav.appt.dart';
import 'package:doctor_appoinment/screen/bottom_nav/doctorspage.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNav_MainPage extends StatefulWidget {
  const BottomNav_MainPage({Key? key}) : super(key: key);

  @override
  State<BottomNav_MainPage> createState() => _BottomNav_MainPageState();
}

class _BottomNav_MainPageState extends State<BottomNav_MainPage> {
  final pages = [
    BottomNav_DoctorsPage(),
    BottomNav_AppointmentPage(),
    BottomNav_HomePage(),
    BottomNav_ReportPage(),
    BottonNav_ProfilePage()
  ];
  var currentTab = 2;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = BottomNav_HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
      //     BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      //   ],
      //   currentIndex: _page,
      //   onTap: (index) {
      //     setState(() {
      //       _page = index;
      //     });
      //   },
      //   backgroundColor: Colors.black,
      //   fixedColor: Colors.orange,
      //   unselectedItemColor: Colors.yellow,
      //   unselectedLabelStyle: TextStyle(color: Colors.black),
      // ),

      // bottomNavigationBar: CurvedNavigationBar(
      //     index: 2,
      //     color: Colors.white,
      //     buttonBackgroundColor: Colors.purple,
      //     backgroundColor: Colors.purple,
      //     animationCurve: Curves.easeInOut,
      //     animationDuration: Duration(seconds: 1),
      //     onTap: (index) {
      //       setState(() {
      //         _page = index;
      //       });
      //     },
      //     items: const [
      //       Image(
      //         image: AssetImage("images/person.png"),
      //         fit: BoxFit.cover,
      //         width: 24,
      //         height: 24,
      //         color: Colors.black,
      //       ),
      //       Image(
      //         image: AssetImage("images/appt.png"),
      //         color: Colors.black,
      //         fit: BoxFit.cover,
      //         width: 24,
      //         height: 24,
      //       ),
      //       Image(
      //         image: AssetImage("images/homee.png"),
      //         fit: BoxFit.cover,
      //         height: 24,
      //         width: 24,
      //         color: Colors.black,
      //       ),
      //       Image(
      //         image: AssetImage("images/reportt.png"),
      //         fit: BoxFit.cover,
      //         width: 24,
      //         height: 24,
      //         color: Colors.black,
      //       ),
      //       Image(
      //         image: AssetImage("images/profile.png"),
      //         fit: BoxFit.cover,
      //         color: Colors.black,
      //         width: 24,
      //         height: 24,
      //       ),
      //     ]),

      // body: pages[_page],

      body: PageStorage(bucket: bucket, child: currentScreen),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.purple,
      //   onPressed: () {
      //     setState(() {
      //       currentScreen = BottomNav_HomePage();
      //       currentTab = 0;
      //     });
      //   },
      //   child: Image(
      //     image: AssetImage("images/homee.png"),
      //     fit: BoxFit.cover,
      //     color: Colors.white,
      //   ),
      // ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 18,
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = BottomNav_DoctorsPage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/person.png"),
                          fit: BoxFit.cover,
                          color: Colors.black,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Doctors")
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = BottomNav_AppointmentPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/appt.png"),
                          fit: BoxFit.cover,
                          color: Colors.black,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Appt.")
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentScreen = BottomNav_HomePage();
                    currentTab = 0;
                  });
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.purple),
                  child: Center(
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = BottomNav_ReportPage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/reportt.png"),
                          fit: BoxFit.cover,
                          color: Colors.black,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Report")
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = BottonNav_ProfilePage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage("images/profile.png"),
                          fit: BoxFit.cover,
                          color: Colors.black,
                          width: 15,
                          height: 15,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Appt.")
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
