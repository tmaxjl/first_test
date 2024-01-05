import 'package:connexion/animation/Delay-animation.dart';
import 'package:connexion/screen-page/welcome-page.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:connexion/models/user.dart';
// import 'package:connexion/data/rest-data.dart';
// import 'package:connexion/data/db-helper.dart';

// abstract class LoginFormContract {
//   void onLoginSuccess(User user);
//   void onLoginError(String error);
// }

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  var _visibility = true;
  var _iconso = Icons.visibility_off;
  var _iconsv = Icons.visibility;
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  RegExp _emailRegex = RegExp(r'^\S+@\S+$');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 1,
      ),
      child: Column(
        children: [
          DelayAnimation(
            delay: 2,
            child: Form(
              key: _formKey1,
              child: Column(children: [
                TextFormField(
                  validator: (value) {
                    if (!_emailRegex.hasMatch(value!)) {
                      return 'Veuillez entrer une adresse email valide';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    labelText: 'Votre mail',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 101, 153),
                    ),
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          DelayAnimation(
            delay: 2,
            child: Form(
              key: _formKey2,
              child: Column(children: [
                TextFormField(
                  validator: (value) {
                    if (value!.length < 8 || value.length > 12) {
                      return 'Le mot de passe doit contenir entre 8 et 12 caractères.';
                    }
                    return null;
                  },
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_person),
                    labelText: 'Mot de passe',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 101, 153),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _iconso,
                        color: Color.fromARGB(255, 0, 101, 153),
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                          
                        });
                      },
                    ),
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          DelayAnimation(
            delay: 2,
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 40,
              ),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey1.currentState!.validate() &&
                          _formKey2.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Connecté'),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Color.fromARGB(255, 0, 101, 153),
                      padding: EdgeInsets.all(13),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "SE CONNECTER",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomePage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.all(13),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "S'INSCRIRE",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class LoginFormPresenter {
//   LoginFormContract _view;
//   RestData api = new RestData();
//   LoginFormPresenter(this._view);

//   doLogin(String email, String password) {
//     //print("HI");
//     var db = dbHelper();
//     db
//         .checkUser(User(email, password))
//         .then((user) => _view.onLoginSuccess(user))
//         .catchError((onError) {
//       //print("Trying to Catch"+onError.toString());
//       return _view.onLoginError(onError.toString());
//     });
//   }
// }
