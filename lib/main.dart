// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Suman Family'),
        ),
           body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Family Name",style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline ),),
              Text("1.Deepa kumari Neupane"),
              Text("2.Liladhar Neupane"),
              Text("3.Tikaram Neupane"),
              Text("4.Huma kumari Neupane"),
              Text("5.Laxmi Neupane"),
              Text("6.Prakash Ghimire"),
              Text("7.Aarika ghimire"),
            ]
          ),
        ),
      ),
    );
  }
}