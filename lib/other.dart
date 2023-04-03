// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'help.dart';
import 'login.dart';
import 'navbar.dart';


class Other extends StatelessWidget {
  final dynamic userData;
  const Other({super.key, @required this.userData});



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
                    MaterialPageRoute(builder: (context) => NavBar(userData: userData,)),
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
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Text(
                      //   'KU',
                      //   style: TextStyle(
                      //   fontSize: 36, 
                      //   color: Colors.white,
                      //   ),
                      // ),
                      // Text(
                      //   'Bike Borrow',
                      //   style: TextStyle(
                      //   fontSize: 24,
                      //   color: Colors.white,
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 40, 40, 20),
                          child: Text(
                          'username',
                          style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          ),
                        ), 
                      ),
                      Text(
                        'Email',
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
                            MaterialPageRoute(builder: (context) => Help(userData: userData)),
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
                          // decoration: BoxDecoration(
                          //   border: Border.all(
                          //     color: Colors.blueAccent
                          //     ),
                          //   borderRadius: BorderRadius.circular(5.0),
                          // ),
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
            //   Positioned(
            //   top: 350,
            //   left: 100,
            //   right: 100,
            //   child: Container(
            //     height: 50,
            //     width: 100,
            //     decoration: BoxDecoration(
            //          gradient: LinearGradient(
            //          begin: Alignment.topLeft,
            //          end: Alignment.bottomRight,
            //          colors: const [
            //         Color.fromRGBO(28, 103, 88, 1),
            //         Color.fromRGBO(61, 131, 97, 1),
            //       ],
            //     ),
            //         borderRadius: BorderRadius.circular(5),
            //     ),
            //     child: const Center(
            //       child: Text(
            //             'ยืมจักรยาน',
            //             style: TextStyle(
            //             fontSize: 16, 
            //             color: Colors.white,
            //             ),
            //           ),
            //         ),
            //   ),
            // ),
            // Positioned(
            //   top: 440,
            //   left: 100,
            //   right: 100,
            //   child: Container(
            //     height: 50,
            //     width: 100,
            //     decoration: BoxDecoration(
            //          gradient: LinearGradient(
            //          begin: Alignment.topLeft,
            //          end: Alignment.bottomRight,
            //          colors: const [
            //         Color.fromRGBO(28, 103, 88, 1),
            //         Color.fromRGBO(61, 131, 97, 1),
            //       ],
            //     ),
            //         borderRadius: BorderRadius.circular(5),
            //     ),
            //     child: const Center(
            //       child: Text(
            //             'คืนจักรยาน',
            //             style: TextStyle(
            //             fontSize: 16, 
            //             color: Colors.white,
            //             ),
            //           ),
            //         ),
            //   ),
            // ),
            // Positioned(
            //   top: 530,
            //   left: 100,
            //   right: 100,
            //   child: Container(
            //     height: 50,
            //     width: 100,
            //     decoration: BoxDecoration(
            //          gradient: LinearGradient(
            //          begin: Alignment.topLeft,
            //          end: Alignment.bottomRight,
            //          colors: const [
            //         Color.fromRGBO(28, 103, 88, 1),
            //         Color.fromRGBO(61, 131, 97, 1),
            //       ],
            //     ),
            //         borderRadius: BorderRadius.circular(5),
            //     ),
            //     child: const Center(
            //       child: Text(
            //             'ตรวจสอบสถานะจักรยาน',
            //             style: TextStyle(
            //             fontSize: 16, 
            //             color: Colors.white,
            //             ),
            //           ),
            //         ),     
            //   ),
            // ),
          ],  
        ),
    );
  }
}