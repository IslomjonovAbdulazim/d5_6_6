import 'package:d5_6_6/pages/login_page.dart';
import 'package:d5_6_6/pages/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            // Background Image
            Image.asset(
              "assets/background.png",
            ),

            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    // Image
                    Spacer(),
                    Image.asset(
                      "assets/img.png",
                    ),
                    Spacer(),

                    // Text (2x)
                    Text(
                      "Discover Your Dream Job here",
                      style: GoogleFonts.poppins(
                        color: Color(0xff1F41BB),
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Explore all the existing job roles based on your interest and study major",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    // Buttons
                    Spacer(flex: 7),
                    Row(
                      children: [
                        Expanded(
                          child: CupertinoButton(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xff1F41BB),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Login",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: CupertinoButton(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.transparent,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterPage(),
                                ),
                              );
                            },
                            child: Text(
                              "Register",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
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
          ],
        ),
      ),
    );
  }
}
