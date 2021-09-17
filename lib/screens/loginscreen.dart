import 'dart:ui';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
//variables declarations

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _isToggled = true;
  var _toggleIcon = const Icon(Icons.remove_red_eye, color: Colors.grey);

//toggle password function

  _togglePassword() {
    setState(() {
      if (_isToggled == false) {
        _toggleIcon = const Icon(Icons.remove_red_eye, color: Colors.grey);
        _isToggled = true;
      } else {
        _toggleIcon =
            const Icon(Icons.remove_red_eye_sharp, color: Colors.blue);
        _isToggled = false;
      }
    });
  }

//sending email and password data to the database function

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
              'https://c2.staticflickr.com/8/7850/40048303933_b5559302cc_o_d.png'),
          const SizedBox(height: 32),
          TextFormField(
            controller: email,
            decoration: const InputDecoration(
                labelText: 'Email', hintText: 'example@gmail.com'),
          ),
          TextFormField(
            controller: password,
            obscureText: _isToggled,
            decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'secret password',
                suffix: InkWell(
                  onTap: () {
                    _togglePassword();
                  },
                  child: _toggleIcon,
                )),
          ),
          const SizedBox(height: 32),
          ButtonTheme(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 16, letterSpacing: 1),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(50))))),
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/SignUp');
              },
              child: const Text(
                'Dont have an account ? sign up',
                style: TextStyle(color: Colors.blue),
              )),
        ],
      ),
    ));
  }
}
