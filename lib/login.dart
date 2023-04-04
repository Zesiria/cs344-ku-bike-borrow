// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:ku_bike_borrow_project/api/ApiService.dart';
import 'package:ku_bike_borrow_project/register.dart';
import 'navbar.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
              bottom: 50,
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(38, 36, 36, 0.7),
                    borderRadius: BorderRadius.circular(20),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
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
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          child: TextField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white
                                ),
                              ),
                              labelText: 'Username:',
                              hintText: 'Enter Your Username',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                ),
                              fillColor: Color.fromRGBO(202, 202, 202, 0.586),
                              filled: true,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                          child: TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white
                                ),
                              ),
                              labelText: 'Password:',
                              hintText: 'Enter Your Password',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                ),
                              fillColor: Color.fromRGBO(202, 202, 202, 0.586),
                              filled: true,
                            ),
                          ),
                        ),
                       Container(
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
                              _onLoginButtonPressed();
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
                            child: Text('Login'),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // ทำงานเมื่อปุ่มถูกคลิก
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Register()),
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
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            //   Positioned(
            //   top: 350,
            //   left: 150,
            //   right: 150,
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
            //             'Login',
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

  void _onLoginButtonPressed() async {
    final String username = _usernameController.text.trim();
    final String password = _passwordController.text.trim();

    Map<String, String> data = {
      'username' : username,
      'password' : password
    };

    final response = await ApiService.login(data);
    if(response['data'] == null) {
      alertDialog(response['message']);
    }
    else{
      String data = response['data']['token'];
      dynamic user = (await ApiService.fetchData(data))['data'];
      _navigateHomepage(user);
    }
  }

  void alertDialog(String message){
    showDialog(
     context: context,
     builder: (BuildContext context) {
       return AlertDialog(
           title: const Text('Result'),
           content: Text(message),
           actions: <Widget>[
             ElevatedButton(onPressed: () {
              Navigator.pop(context);
             }, child: const Text("Confirm"))
           ]
       );
     });
  }

  void _navigateHomepage(dynamic user){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NavBar(user: user)),
    );
  }
}