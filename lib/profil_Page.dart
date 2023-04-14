import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts/profil_Page.dart';

class profilPage extends StatelessWidget {
  const profilPage({super.key});

Widget profil() {
  Widget Card(String img, String text) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 2))
                      ],
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              image: DecorationImage(image: AssetImage(img)),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            text,
            style: GoogleFonts.poppins(
              color: Color(0xff090A0A),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  return GridView.count(
    crossAxisCount: 2,
    padding: EdgeInsets.all(10),
    childAspectRatio: 1,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    children: [
      Card("assets/chair_white_bg.png", "Best Chair"),
      Card("assets/lamp_white_bg.png", "Best Lamp"),
      Card("assets/chair_white_bg.png", "Best Chair"),
      Card("assets/plant_white_bg.png", "Plant Choice"),
    ],
  );
}

    Widget header(){
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("24 Collection",
            style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 65, 53, 37),
              fontSize: 13,
              fontWeight: FontWeight.w400
            ),
            ),
            Text("12 History",
            style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 65, 53, 37),
              fontSize: 13,
              fontWeight: FontWeight.w400
            ),
            ),
          ],
        ),
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(153, 241, 240, 240),
      //appbar
      appBar: PreferredSize(
        child: Container(
          height: 500,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Assets/background.png'),
                    fit: BoxFit.cover),
              ),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 153, 144, 59).withOpacity(.50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                        'Profil',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 33,
                            fontWeight: FontWeight.w600),
                      ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 2))
                      ]
                    ),
                    child: CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage("profil_fajar.jpeg"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                        'Fajar Nugraha',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ), 
                      Text(
                        'Mobile Application Developer',
                        style: GoogleFonts.inter(
                            color: Colors.white.withOpacity(0.7),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),                      
                ],
              ),
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(300),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
              height: 12,
              ),
              header(),
              SizedBox(
              height: 10,
              ),
              profil(),
          
          
        ],),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 250, 100, 60),
                Color.fromARGB(255, 250, 63, 49),
              ],
            ),
          ),
          child: Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 24, 23, 23).withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: BottomNavigationBar(
              elevation: 0,
              currentIndex: 1,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Color.fromARGB(220, 105, 81, 50),
              iconSize: 35,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
              ],
              onTap: (index) {
                switch (index) {
                  case 0:
                    Navigator.pop(context);
                    break;
                  case 1:
                    // do nothing because it is already on profile page
                    break;
                  default:
                    // do nothing
                    break;
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
