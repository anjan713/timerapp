import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerapp/timerdata.dart';

import './stopwatch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
          create: (ctx) => TimerData(), child: StopWatch()),
    );
  }
}
