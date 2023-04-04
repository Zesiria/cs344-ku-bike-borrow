// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'help.dart';
import 'login.dart';
import 'navbar.dart';


class Other extends StatelessWidget {
  final dynamic user;
  const Other({super.key, @required this.user});



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
                    MaterialPageRoute(builder: (context) => NavBar(user: user,)),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
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
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 40, 40, 20),
                          child: Text(
                          '${user['username']}',
                          style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          ),
                        ), 
                      ),
                      Text(
                        '${user['email']}',
                        style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        ),
                      ),
                      Divider(
                        height: 50,
                        thickness: 2,
                        color: Color.fromRGBO(30, 47, 43, 1),
                      ),
                      InkWell(
                        onTap: () {
                          // ทำงานเมื่อปุ่มถูกคลิก
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Help(user: user)),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'ศูนย์ความช่วยเหลือ',
                            style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        height: 50,
                        thickness: 2,
                        color: Color.fromRGBO(30, 47, 43, 1),
                      ),
                      InkWell(
                        onTap: () {
                          // ทำงานเมื่อปุ่มถูกคลิก
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LogIn()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                                'ออกจากระบบ',
                                style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                ),
                              ),
                        ),
                      ),
                      Divider(
                        height: 50,
                        thickness: 2,
                        color: Color.fromRGBO(30, 47, 43, 1),
                      ),
                    ],
                  ),
                ),
              ),
          ],  
        ),
    );
  }
}