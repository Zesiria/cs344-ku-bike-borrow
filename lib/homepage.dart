// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'navbar.dart';
import 'login.dart';


class HomePage extends StatelessWidget {
  final dynamic userData;
  const HomePage({super.key, required this.userData});

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
                    children: <Widget> [
                      Text(
                        'KU',
                        style: TextStyle(
                        fontSize: 36, 
                        color: Colors.white,
                        ),
                      ),
                      Text(
                        'Bike Borrow',
                        style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(50, 50, 50, 20),
                        child: Text(
                                  'welcome',
                                  style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  ),
                                ),
                      ),
                      Text(
                        'username',
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 40, 40, 20),
                        child: Text(
                                  'สถานะ : ',
                                  style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  ),
                                ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text(
                                  'ยืมเมื่อ : ',
                                  style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  ),
                                ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(40, 70, 40, 20),
                      child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                              Color.fromRGBO(28, 103, 88, 1),
                              Color.fromRGBO(61, 131, 97, 1),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 15, 15, 15).withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NavBar(userData: userData)),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, 
                              backgroundColor: Colors.transparent,
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              elevation: 0,
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: Text('ยืมจักรยาน'),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(40, 10, 40, 20),
                      child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                              Color.fromRGBO(28, 103, 88, 1),
                              Color.fromRGBO(61, 131, 97, 1),
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 15, 15, 15).withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NavBar(userData: userData)),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, 
                              backgroundColor: Colors.transparent,
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              elevation: 0,
                              textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: Text('คืนจักรยาน'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            //   Positioned(
            //   top: 400,
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
            //   top: 470,
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
          ],  
        ),
    );
  }
}