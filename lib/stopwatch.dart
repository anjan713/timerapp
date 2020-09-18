import 'package:provider/provider.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:timerapp/timerdata.dart';

class StopWatch extends StatefulWidget {
  @override
  _StopWatchState createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (t) {
      var timerdata = Provider.of<TimerData>(context, listen: false);

      timerdata.updateTime();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('============print===========');
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset('assets/stopwatch.png'),
          SizedBox(height: 32),
          Consumer<TimerData>(
            builder: (ctx, timerdata, _) {
              return Text(timerdata.remainingtime?.toString() ?? '',
                  style: TextStyle(fontSize: 72));
            },
          )
        ],
      ),
    ));
  }
}
