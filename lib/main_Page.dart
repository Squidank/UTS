import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts/profil_Page.dart';

class mainPage extends StatelessWidget {
  const mainPage({super.key});

  Widget CategorySlide() {
    Widget category(String img, String text) {
      return Stack(children: [
        Container(
          child: Container(
            margin: const EdgeInsets.only(right: 13),
            height: 100,
            width: 135,
            decoration: BoxDecoration(
                boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 2))
                  ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  height: 60,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text,
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 18),
                      ),
                      const Icon(
                        Icons.arrow_forward_sharp,
                        size: 22,
                        color: Colors.black,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 10),
          child: Text('Category',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 24,
              )),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 15,
                ),
                category('assets/plant_white_bg.png', 'Plant'),
                category('assets/lamp_white_bg.png', 'Lamp'),
                category('assets/chair_white_bg.png', 'Chair'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }

  
  //   return Container();
  // }

// widget Hot Item
  Widget hotItem() {
    Widget list(String img, String text, String harga) {
      return Container(
        margin: const EdgeInsets.only(bottom: 20, left: 22),
        child: Stack(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width: 160,
              height: 185,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(img),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: const Offset(0, 2))
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                alignment: Alignment.bottomCenter,
                height: 60,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.black54.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 6, top: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            text,
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color:
                                    const Color(0xffFFFFFF).withOpacity(0.7)),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          harga,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: const Color(0xffFFFFFF).withOpacity(0.5)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, bottom: 10),
          child: Text('Hot Item',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 24,
              )),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  list('assets/favorite_img_4.jpg', 'Cactus', '\$18'),
                  list('assets/favorite_img_1.jpg', 'Traditional Chair', '\$24'),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              list('assets/favorite_img_2.jpg', 'Wooden Chair', '\$44'),
              list('assets/favorite_img_3.jpeg', 'Elegant Lamp', '\$13'),
            ],
          ),
        ),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              list('assets/favorite_img_5.jpg', 'Beach Beautiful', '\$36'),
              list('assets/favorite_img_6.jpg', 'Architectural', '\$30'),
            ],
          ),
        )
      ],
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 28,
                      ),
                      Text(
                        'Discover',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w400),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 28,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Color.fromARGB(255, 65, 53, 37),
                              size: 30,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            hintText: 'What are you looking for?',
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 65, 53, 37),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(140),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 250, 100, 60),
                    Color.fromARGB(255, 250, 63, 49)
                  ])),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal, child: CategorySlide()),
            const SizedBox(
              height: 10,
            ),
            hotItem(),

            // gridVieww()
          ],
        ),
      )),
      //bottom NavBar
      bottomNavigationBar: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color:
                        const Color.fromARGB(255, 24, 23, 23).withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 5),
              ],
            ),
            child: BottomNavigationBar(
              elevation: 0,
              currentIndex: 0,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Color.fromARGB(220, 105, 81, 50),
              iconSize: 35,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
              ],
              onTap: (index) {
                switch (index){
                  case 0:
                  // do nothing because it is already on home page
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profilPage()),
                    );
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
