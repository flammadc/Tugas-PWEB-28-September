import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var d1 = Random().nextInt(6) + 1;
  var d2 = Random().nextInt(6) + 1;
  void randomize() {
    d1 = Random().nextInt(6) + 1;
    d2 = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          new ThemeData(scaffoldBackgroundColor: Color.fromARGB(240, 0, 0, 0)),
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      randomize();
                    });
                  },
                  child: Image(
                    image: AssetImage('assets/dice' + d1.toString() + '.png'),
                    width: 180,
                  )
                  // Image.asset('assets/dice' + d1.toString() + '.png'),
                  ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      randomize();
                    });
                  },
                  child: Image(
                    image: AssetImage('assets/dice' + d2.toString() + '.png'),
                    width: 180,
                  )
                  // Image.asset('assets/dice' + d1.toString() + '.png'),
                  ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
