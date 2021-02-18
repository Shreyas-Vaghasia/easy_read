import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double fontsize = 30;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    style: TextStyle(
                      fontSize: fontsize,
                    ),
                    decoration:
                        InputDecoration(hintText: 'Enter your text here'),
                    autocorrect: true,
                    maxLines: null,
                  ),
                ),
                Slider(
                  value: fontsize,
                  min: 30,
                  max: 150,
                  onChanged: (newsize) {
                    setState(() {
                      fontsize = newsize;
                    });
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
