// import 'package:connexion/data/db-helper.dart';
import 'package:connexion/screen-page/login/login-page.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:connexion/animation/Delay-animation.dart';
// import 'package:connexion/main.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // dbHelper();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayAnimation(
                delay: 1,
                child: Container(
                  height: 200,
                  margin: EdgeInsets.only(
                    top: 100,
                  ),
                  child: Column(children: [
                    DelayAnimation(
                      delay: 1,
                      child: Image.asset('images/delta.png'),
                    ),
                    // DelayAnimation(
                    //   delay: 1,
                    //   child: Text(
                    //     'Un logiciel parfait pour le suivi-évaluation.',
                    //     textAlign: TextAlign.center,
                    //     style: GoogleFonts.poppins(
                    //         color: Color.fromARGB(255, 170, 206, 55),
                    //         fontSize: 18,
                    //         fontWeight: FontWeight.w500),
                    //   ),
                    // ),
                  ]),
                ),
              ),
              DelayAnimation(
                delay: 2,
                child: Container(
                  height: 250,
                  child: Image.asset('images/image1.png'),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              DelayAnimation(
                delay: 2,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                  ),
                  child: Text(
                    "Logiciel de suivi-évaluation de projets et programmes de développement.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              DelayAnimation(
                delay: 2,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 0, 101, 153),
                        shape: StadiumBorder(),
                        padding: EdgeInsets.all(13)),
                    child: Text(
                      'COMMENCER',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 246, 246, 246),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
