import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'email'),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(labelText: 'password'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                print('pressed');
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
