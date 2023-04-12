// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Avik";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text("Welcome to $days of Flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
