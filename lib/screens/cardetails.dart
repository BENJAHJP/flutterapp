import 'package:flutter/material.dart';

class Cardetails extends StatefulWidget {
  const Cardetails({Key? key}) : super(key: key);

  @override
  _CardetailsState createState() => _CardetailsState();
}

class _CardetailsState extends State<Cardetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('valuate'),
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Type of vehicle',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)))),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Name of vehicle',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Country of origin',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Name of the owner',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'comments',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'write something inside',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'write something inside',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'write something inside',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'write something inside',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'write something inside',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'write something inside',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'write something inside',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'write something inside',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'write something inside',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text('Next'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
