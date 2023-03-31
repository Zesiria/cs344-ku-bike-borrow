// import 'dart:ui';
// import 'homepage.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//     @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }

//   // @override
//   // Widget build(BuildContext context) {
//   //   return MaterialApp(
//   //     title: 'Flutter Demo',
//   //     home: Scaffold(
//   //       body: Stack(
//   //         children: [
//   //           Container(
//   //             decoration: const BoxDecoration(
//   //                 gradient: LinearGradient(
//   //                 begin: Alignment.topCenter,
//   //                 end: Alignment.bottomCenter,
//   //                 colors: [
//   //                 Color.fromRGBO(28, 103, 88, 1),
//   //                 Color.fromRGBO(61, 131, 97, 1),
//   //                 ],
//   //               ),
//   //             ),
//   //           ),
//   //           Positioned(
//   //             top: 80,
//   //             left: 50,
//   //             right: 50,
//   //             bottom: 0,
//   //             child: Container(
//   //               height: 100,
//   //               width: 100,
//   //               decoration: BoxDecoration(
//   //                   // ignore: prefer_const_constructors
//   //                   color: Color.fromRGBO(38, 36, 36, 0.7),
//   //                   borderRadius: BorderRadius.circular(20),
//   //               ),
//   //               child: Column(
//   //               crossAxisAlignment: CrossAxisAlignment.center,
//   //               mainAxisAlignment: MainAxisAlignment.start,
//   //                   children: const [
//   //                     Text(
//   //                       'KU',
//   //                       style: TextStyle(
//   //                       fontSize: 36, 
//   //                       color: Colors.white,
//   //                       ),
//   //                     ),
//   //                     Text(
//   //                       'Bike Borrow',
//   //                       style: TextStyle(
//   //                       fontSize: 24,
//   //                       color: Colors.white,
//   //                       ),
//   //                     ),
//   //                     Padding(
//   //                       padding: EdgeInsets.fromLTRB(50, 50, 50, 20),
//   //                       child: Text(
//   //                                 'welcome',
//   //                                 style: TextStyle(
//   //                                 fontSize: 16,
//   //                                 color: Colors.white,
//   //                                 ),
//   //                               ),
//   //                     ),
//   //                     Text(
//   //                       'username',
//   //                       style: TextStyle(
//   //                       fontSize: 20,
//   //                       color: Colors.white,
//   //                       ),
//   //                     ),
//   //                   ],
//   //                 ),
//   //               ),
//   //             ),
//   //             Positioned(
//   //             top: 350,
//   //             left: 100,
//   //             right: 100,
//   //             child: Container(
//   //               height: 50,
//   //               width: 100,
//   //               decoration: BoxDecoration(
//   //                   // ignore: prefer_const_constructors
//   //                    gradient: LinearGradient(
//   //                    begin: Alignment.topLeft,
//   //                    end: Alignment.bottomRight,
//   //                    colors: const [
//   //                   Color.fromRGBO(28, 103, 88, 1),
//   //                   Color.fromRGBO(61, 131, 97, 1),
//   //                 ],
//   //               ),
//   //                   borderRadius: BorderRadius.circular(5),
//   //               ),
//   //               child: const Center(
//   //                 child: Text(
//   //                       'ยืมจักรยาน',
//   //                       style: TextStyle(
//   //                       fontSize: 16, 
//   //                       color: Colors.white,
//   //                       ),
//   //                     ),
//   //                   ),
//   //             ),
//   //           ),
//   //           Positioned(
//   //             top: 440,
//   //             left: 100,
//   //             right: 100,
//   //             child: Container(
//   //               height: 50,
//   //               width: 100,
//   //               decoration: BoxDecoration(
//   //                   // ignore: prefer_const_constructors
//   //                    gradient: LinearGradient(
//   //                    begin: Alignment.topLeft,
//   //                    end: Alignment.bottomRight,
//   //                    colors: const [
//   //                   Color.fromRGBO(28, 103, 88, 1),
//   //                   Color.fromRGBO(61, 131, 97, 1),
//   //                 ],
//   //               ),
//   //                   borderRadius: BorderRadius.circular(5),
//   //               ),
//   //               child: const Center(
//   //                 child: Text(
//   //                       'คืนจักรยาน',
//   //                       style: TextStyle(
//   //                       fontSize: 16, 
//   //                       color: Colors.white,
//   //                       ),
//   //                     ),
//   //                   ),
//   //             ),
//   //           ),
//   //           Positioned(
//   //             top: 530,
//   //             left: 100,
//   //             right: 100,
//   //             child: Container(
//   //               height: 50,
//   //               width: 100,
//   //               decoration: BoxDecoration(
//   //                   // ignore: prefer_const_constructors
//   //                    gradient: LinearGradient(
//   //                    begin: Alignment.topLeft,
//   //                    end: Alignment.bottomRight,
//   //                    colors: const [
//   //                   Color.fromRGBO(28, 103, 88, 1),
//   //                   Color.fromRGBO(61, 131, 97, 1),
//   //                 ],
//   //               ),
//   //                   borderRadius: BorderRadius.circular(5),
//   //               ),
//   //               child: const Center(
//   //                 child: Text(
//   //                       'ตรวจสอบสถานะจักรยาน',
//   //                       style: TextStyle(
//   //                       fontSize: 16, 
//   //                       color: Colors.white,
//   //                       ),
//   //                     ),
//   //                   ),
//   //             ),
//   //           ),
//   //         ],  
//   //       ),
//   //     ),
//   //   );
//   // }
// }

// // class _MyAppState extends State<MyApp> {
// //   int _selectedIndex = 0;
// //   static const List<Widget> _widgetOptions = <Widget>[
// //     Text(
// //       'This is Home Page',
// //       style: TextStyle(fontSize: 30),
// //     ),
// //     Text(
// //       'This is Search Page',
// //       style: TextStyle(fontSize: 30),
// //     ),
// //     Text(
// //       'This is Profile Page',
// //       style: TextStyle(fontSize: 30),
// //     ),
// //   ];

// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'MyApp',
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: const Text('My Bottom Navbar'),
// //         ),
// //         body: Center(
// //           child: _widgetOptions.elementAt(_selectedIndex),
// //         ),
// //         bottomNavigationBar: BottomNavigationBar(
// //           items: const <BottomNavigationBarItem>[
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.home),
// //               label: 'Home',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.search),
// //               label: 'Search',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.person),
// //               label: 'Profile',
// //             ),
// //           ],
// //           currentIndex: _selectedIndex,
// //           onTap: _onItemTapped,
// //         ),
// //       ),
// //     );
// //   }
// // }



import 'package:flutter/material.dart';
import 'login.dart';
import 'navbar.dart';
import 'homepage.dart';
import 'register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    );
  }
}