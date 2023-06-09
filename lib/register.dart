// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:ku_bike_borrow_project/api/ApiService.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register>{
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

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
                    MaterialPageRoute(builder: (context) => LogIn()),
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
                          'Register',
                          style: TextStyle(
                          fontSize: 36, 
                          color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white
                                ),
                              ),
                              labelText: 'Email:',
                              hintText: 'Enter Your Email',
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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          child: TextField(
                            controller: _confirmPasswordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white
                                ),
                              ),
                              labelText: 'Confirm Password:',
                              hintText: 'Enter Your ConfirmPassword',
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
                              _register();
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
                            child: Text('Register'),
                          ),
                        ),
                      ],
                    ),
                  ),
                 ),
              ),
          ],  
        ),
    );
  }
  void _register() async{
    if(_passwordController.text.trim() != _confirmPasswordController.text.trim()){
      alertDialog("Password and confirm password didn't match");
      return;
    }
    Map<String, dynamic> data = {
      'username' : _usernameController.text.trim(),
      'password' : _passwordController.text.trim(),
      'email' : _emailController.text.trim()
    };

    final response = await ApiService.register(data);
    if(response['message'] == 'Successfully registered.') {
      _successfullyRegistered();
      return;
    }
    else{
      alertDialog(response['message']);
      return;
    }
  }

  void _successfullyRegistered(){
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
           title: const Text('Result'),
           content: Text("Successfully registered."),
           actions: <Widget>[
             ElevatedButton(onPressed: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => LogIn()),
               );
             }, child: const Text("Confirm"))
           ]
          );
        });
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
}