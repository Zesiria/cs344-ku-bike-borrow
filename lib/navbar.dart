// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'homepage.dart';
import 'other.dart';

// void main() => runApp(MaterialApp(
//     builder: (context, child) {
//       return Directionality(textDirection: TextDirection.ltr, child: child!);
//     },
//     title: 'GNav',
//     theme: ThemeData(
//       primaryColor: Colors.grey[800],
//     ),
//     home: const Example()));

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
      HomePage(),
    // Text(
    //   'Likes',
    //   style: optionStyle,
    // ),
    // Text(
    //   'Search',
    //   style: optionStyle,
    // ),
    Other()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(215, 201, 136, 1),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'หน้าหลัก',
                ),
                // GButton(
                //   icon: Icons.history_outlined,
                //   text: 'ประวัติ',
                // ),
                // GButton(
                //   icon: Icons.notifications_none_outlined,
                //   text: 'แจ้งเตือน',
                // ),
                GButton(
                  icon: Icons.menu_outlined,
                  text: 'อื่นๆ',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple[300],
//       body: CustomScrollView(
//         slivers: [
//           // sliver app bar
//           SliverAppBar(
//             expandedHeight: 300,
//             backgroundColor: Colors.deepPurple,
//             leading: Icon(Icons.menu),
//             floating: true,
//             pinned: true,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text('F A N C Y A P P B A R'),
//               background: Container(color: Colors.deepPurple[700]),
//             ),
//           ),

//           // sliver items 1
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 top: 20.0,
//                 left: 20,
//                 right: 20,
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Container(
//                   color: Colors.deepPurple[400],
//                   height: 150,
//                 ),
//               ),
//             ),
//           ),

//           // sliver items 2
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 top: 20.0,
//                 left: 20,
//                 right: 20,
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Container(
//                   color: Colors.deepPurple[400],
//                   height: 150,
//                 ),
//               ),
//             ),
//           ),

//           // sliver items 3
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 top: 20.0,
//                 left: 20,
//                 right: 20,
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Container(
//                   color: Colors.deepPurple[400],
//                   height: 150,
//                 ),
//               ),
//             ),
//           ),

//           // sliver items 4
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 top: 20.0,
//                 left: 20,
//                 right: 20,
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Container(
//                   color: Colors.deepPurple[400],
//                   height: 150,
//                 ),
//               ),
//             ),
//           ),

//           // sliver items 5
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.only(
//                 top: 20.0,
//                 left: 20,
//                 right: 20,
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Container(
//                   color: Colors.deepPurple[400],
//                   height: 150,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }