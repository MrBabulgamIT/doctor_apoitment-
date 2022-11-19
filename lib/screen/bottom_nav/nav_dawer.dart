import 'package:doctor_appoinment/screen/bottom_nav/doctorspage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Nav_Drawer extends StatelessWidget {
  const Nav_Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Home",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: Colors.purple.withOpacity(0.1),
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("images/nav_1.png"),
                  color: Colors.purple,
                  width: 25,
                  height: 15,
                ),
              ),
              title: Text(
                'Home',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.purple),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("images/nav_2.png"),
                  color: Colors.purple,
                  width: 25,
                  height: 15,
                ),
              ),
              title: Text(
                'Dashboard',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("images/nav_3.png"),
                  color: Colors.purple,
                  width: 25,
                  height: 15,
                ),
              ),
              title: Text(
                'Report',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Book Appointment",
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w800,
                      fontSize: 13,
                    ),
                  ),
                  Image(
                    image: AssetImage("images/nav_more.png"),
                    width: 25,
                    height: 15,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("images/nav_4.png"),
                  color: Colors.purple,
                  width: 25,
                  height: 15,
                ),
              ),
              title: Text(
                'Doctors',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Get.to(DoctorPage());
              },
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("images/nav_5.png"),
                  color: Colors.purple,
                  width: 25,
                  height: 15,
                ),
              ),
              title: Text(
                'Specialties',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("images/nav_6.png"),
                  color: Colors.purple,
                  width: 25,
                  height: 15,
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Appointment',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green),
                    child: Center(
                        child: Text(
                      "2",
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ],
              ),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'SETTINGS',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w800,
                  fontSize: 13,
                ),
              ),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("images/nav_7.png"),
                  color: Colors.purple,
                  width: 25,
                  height: 15,
                ),
              ),
              title: Text(
                'Manage Appt.',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("images/nav_8.png"),
                  color: Colors.purple,
                  width: 25,
                  height: 15,
                ),
              ),
              title: Text(
                'Home Care',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("images/nav_9.png"),
                  color: Colors.purple,
                  width: 25,
                  height: 15,
                ),
              ),
              title: Text(
                'Find Us',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("images/nav_10.png"),
                  color: Colors.purple,
                  width: 25,
                  height: 15,
                ),
              ),
              title: Text(
                'Contact Us',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("images/nav_11.png"),
                  color: Colors.purple,
                  width: 25,
                  height: 15,
                ),
              ),
              title: Text(
                'Health Tip',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              tileColor: Colors.purple.withOpacity(0.1),
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("images/nav_12.png"),
                  color: Colors.purple,
                  width: 25,
                  height: 15,
                ),
              ),
              title: Text(
                'My Profile',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.purple),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8),
                child: Image(
                  image: AssetImage("images/nav_13.png"),
                  width: 25,
                  height: 15,
                ),
              ),
              title: Text(
                'Settings',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
