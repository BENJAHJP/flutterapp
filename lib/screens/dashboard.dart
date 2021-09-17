import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          const CircleAvatar(),
          const Text('Name of account owner'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ElevatedButton(onPressed: null, child: Text('New jobs')),
              ElevatedButton(onPressed: null, child: Text('Pending')),
              ElevatedButton(onPressed: null, child: Text('submitted jobs'))
            ],
          )
        ],
      ),
    );
  }
}
