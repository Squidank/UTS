import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uts/main_Page.dart';
import 'package:google_fonts/google_fonts.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //bacground atas (dengan gambar)
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Assets/background.png'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                padding: const EdgeInsets.only(top: 120, left: 10, right: 10),
                color: const Color.fromARGB(255, 153, 144, 59).withOpacity(.40),
                child: Column(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Your Furniture",
                            style: GoogleFonts.poppins(
                                fontSize: 20, color: Colors.white))),
                    const SizedBox(
                      width: 35,
                    ),
                    Text(
                      'Furniture',
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 5,
                      width: 120,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 65, 53, 37)),
                    ),
                  ],
                ),
              ),
            ),
          ),
//container Text Field
          Positioned(
            top: 270,
            child: Container(
              height: 310,
              width: MediaQuery.of(context).size.width - 40,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: const Color.fromARGB(255, 65, 53, 37)
                            .withOpacity(0.4),
                        spreadRadius: 7,
                        blurRadius: 15),
                  ]),
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Text(
                        'Login First',
                        style: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: const Color.fromARGB(255, 65, 53, 37),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40, right: 10, left: 10),
                    child: Column(
                      children: [
                        loginTextfield(
                            Icons.person_2_rounded, 'User Name', false),
                        loginTextfield(
                            Icons.lock_open_rounded, 'Password', true),
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Icon(
                                      Icons.square_outlined,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Remember me',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
//login button
          Positioned(
              top: 600,
              right: 0,
              left: 0,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => mainPage()));
                  },
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 65, 53, 37),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 6,
                              offset: const Offset(0, 2))
                        ]),
                    child: Center(
                      child: Text(
                        'Login',
                        style: GoogleFonts.ubuntu(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

//Text field
  Widget loginTextfield(IconData icon, String hintText, bool password) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        obscureText: password,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          contentPadding: const EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ),
    );
  }
}