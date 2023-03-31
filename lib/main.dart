import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double circleSize = width / 2;
    return Container(
        color: Colors.white,
        child: Stack(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: circleSize,
              height: circleSize,
              margin: const EdgeInsets.only(top: 200),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.withOpacity(0.5),
                    spreadRadius: 20,
                    blurRadius: 100,
                    offset: const Offset(0, 0),
                  )
                ],
              ),
            ),
            Container(
              width: circleSize,
              height: circleSize,
              margin: const EdgeInsets.only(top: 250),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.4),
                    spreadRadius: 10,
                    blurRadius: 100,
                    offset: const Offset(0, 0),
                  )
                ],
              ),
            ),
          ]),
          Positioned(
            top: 100,
            right: 100,
            child: Image.asset(
              "assets/images/icon_app.png",
              width: circleSize,
              height: circleSize,
            ),
          ),
        ]));
  }
}
