// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ku_bike_borrow_project/other.dart';
import 'navbar.dart';
import 'login.dart';


class Help extends StatelessWidget {
  final dynamic user;
  const Help({super.key, required this.user});

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
                    MaterialPageRoute(builder: (context) => NavBar(user: user)),
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
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 20),
                            child: Text(
                            'ข้อบังคับการใช้งาน',
                            style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            ),
                          ), 
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                              child: Text(
                                '1. ผู้ใช้สามารถใช้บริการการยืมจักรยานได้ตามจุดบริการต่างๆภายในมหาวิทยาลัย',
                                style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                              child: Text(
                                '2. ผู้ใช้สามารถยืมได้ 1 บัญชีผู้ใช้ต่อจักรยาน 1 คัน',
                                style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                              child: Text(
                                '3. ผู้ใช้สามารถยืมจักรยานได้ตั้งแต่ 09:00น. - 23:00น.',
                                style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                              child: Text(
                                '4. ในกรณีที่ผู้ใช้คืนจักรยานเกินเวลาที่กำหนดจะต้องเสียค่าปรับ 400 บาท/วัน',
                                style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                              child: Text(
                                '5. ในกรณีที่ผู้ใช้มีข้อสงสัยหรือต้องการที่จะแจ้งปัญหา สามารถติดต่อได้ที่เบอร์โทรศัพท์ 062-XXX-XXXX',
                                style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                ),
                              ),
                            ),
                          ] 
                        ),
                      ]
                ),
              ),
            ),
          ],  
        ),
    );
  }
}