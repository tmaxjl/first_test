import 'package:connexion/animation/Delay-animation.dart';
import 'package:connexion/screen-page/login/components/login-form.dart';
import 'package:connexion/screen-page/welcome-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:connexion/login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 246, 246, 246),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black.withOpacity(0.5),
            size: 40,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WelcomePage(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayAnimation(
                delay: 1,
                child: Container(
                  height: 200,
                  margin: EdgeInsets.only(
                    top: 60,
                  ),
                  child: Column(children: [
                    DelayAnimation(
                      delay: 1,
                      child: Image.asset('images/delta.png'),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
