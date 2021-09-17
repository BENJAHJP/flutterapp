import 'package:myapp/database/signup.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
//variable declarations for storing user input values

  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

//snackbar to display messages

  void _showInSnackBar({required String value, required BuildContext context}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value)));
  }

//function for sending user information to the database and checking for missing fields

  _register() {
    if (_username.text.isEmpty) {
      _showInSnackBar(value: 'enter username', context: context);
    } else if (_email.text.isEmpty) {
      _showInSnackBar(value: 'enter email', context: context);
    } else if (_password.text.isEmpty) {
      _showInSnackBar(value: 'enter password', context: context);
    } else {
      SignUpDatabase(
              username: _username.text,
              email: _email.text,
              password: _password.text)
          .register()
          .then((value) =>
              {_showInSnackBar(value: 'response.$value', context: context)});
    }
  }

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
              controller: _username,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextFormField(
              controller: _email,
              decoration: const InputDecoration(labelText: 'email'),
              validator: (_email) =>
                  _email != null && !EmailValidator.validate(_email)
                      ? 'Not a valid email.'
                      : null,
            ),
            TextFormField(
              controller: _password,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'password'),
              validator: (password) {
                if (password!.isEmpty) {
                  return 'enter password';
                } else {
                  null;
                }
              },
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                _register();
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
