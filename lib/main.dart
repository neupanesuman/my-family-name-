// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:nameapp/name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Family Name")),
      body: ListView(
        children: [
          const ListTile(
            title: Text("Deepa Neupane"),
          ),
          ListTile(
            leading: const Icon(Icons.navigation),
            title: const Text("Navigation (Click Me)"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const NamePage();
                },
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.power_input_rounded),
            title: const Text("Modal Dialog"),
            onTap: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Suman'),
                content: const Text('You clicked Alert Dialog'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
          ),
          const ListTile(
            title: Text("Deepa Neupane"),
          ),
          const ListTile(
            title: Text("Deepa Neupane"),
          ),
        ],
      ),
    );
  }
}
