// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ku_bike_borrow_project/other.dart';
import 'navbar.dart';
import 'login.dart';


class Help extends StatelessWidget {
  final dynamic userData;
  const Help({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                  Color.fromRGBO(28, 103, 88, 1),
                  Color.fromRGBO(61, 131, 97, 1),
                  ],
                ),
              ),
            ),
            InkWell(
                onTap: () {
                  // ทำงานเมื่อปุ่มถูกคลิก
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Other(userData: userData)),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  // decoration: BoxDecoration(
                  //   border: Border.all(
                  //     color: Colors.blueAccent
                  //     ),
                  //   borderRadius: BorderRadius.circular(5.0),
                  // ),
                  // child: Text(
                  //   'Go to Next Screen',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ),
            Positioned(
              top: 50,
              left: 50,
              right: 50,
              bottom: 30,
              child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(38, 36, 36, 0.7),
                      borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
          ],  
        ),
    );
  }
}