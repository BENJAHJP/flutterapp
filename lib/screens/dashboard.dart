import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final String _name = 'Benjamin Muthui';
  final int _activeJobs = 22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                ),
                const SizedBox(width: 30),
                Text(_name),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(Icons.logout),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Column(
                  children: [
                    const Text('Active Jobs'),
                    Text('$_activeJobs'),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [Text('pending'), Text('45')],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [Text('submitted'), Text('45')],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('New jobs'))),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Active'))),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('submitted')))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.grey,
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('KAX')),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/Cardetails');
                                    },
                                    child: const Text('Valuate')),
                              ]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
