// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, avoid_print

import 'package:app1/contants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App1());
}

class App1 extends StatelessWidget {
  App1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // to remove debug banner
      title: 'App1',
      home: App1Page(),
    );
  }
}

class App1Page extends StatefulWidget {
  const App1Page({super.key});

  @override
  State<App1Page> createState() => _App1PageState();
}

class _App1PageState extends State<App1Page> {
  bool _isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Introduction',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        backgroundColor: Colors.grey[900],
        elevation: 1,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Stack( // this stack is to put the container behind the circular avatar
                  children: [
                    Container(
                      // this container is for shadow behind the image
                      width: 235.0,
                      height: 235.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2, 2),
                            color: Color.fromARGB(255, 255, 116, 200),
                            blurRadius: 13.0,
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 120,
                      backgroundImage: NetworkImage(
                          'https://cdnb.artstation.com/p/assets/images/images/023/205/079/large/simon-lee-dark-bule.jpg?1578447156'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Name: John Wick',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                if (_isButtonPressed) // if button is pressed, show email
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Email: johnwick@johnwick.com',
                      style: GoogleFonts.robotoSerif(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                customElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isButtonPressed = !_isButtonPressed;
                    });
                  },
                  buttonText: _isButtonPressed ? 'Hide Email' : 'Show Email',  //changing the button text
                  buttonColor: Colors.pinkAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
