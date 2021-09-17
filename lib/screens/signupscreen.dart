import 'package:myapp/database/signup.dart';
import 'package:myapp/screens/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
//variable declarations for storing user input values

  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

//function for sending user information to the database

  register() {
    if (username.text.isEmpty) {
      print("enter username");
    } else if (email.text.isEmpty) {
      print("enter email");
    } else if (password.text.isEmpty) {
      print("enter password");
    } else {
      SignUpDatabase(username: username.text, email: email.text, password: password.text)
      .register()
      .then((value) => {
          print('response: $value')
      });
    }
  }
//function to check if user has entered all fields

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://c2.staticflickr.com/8/7850/40048303933_b5559302cc_o_d.png'),
            const SizedBox(height: 32),
            TextFormField(
              controller: username,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextFormField(
              controller: email,
              decoration: const InputDecoration(labelText: 'email'),
            ),
            TextFormField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'password'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                register();
              },
              child: const Text('Sign up'),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(50))))),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text(
                'Alredy have an account login',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
