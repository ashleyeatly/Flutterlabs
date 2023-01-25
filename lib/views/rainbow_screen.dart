import 'dart:async';

import 'package:flutter/material.dart';

class RainbowScreen extends StatefulWidget {
  const RainbowScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RainbowScreenState();
}

class _RainbowScreenState extends State<RainbowScreen> {
   late int seconds;
   late Timer timer;

  @override
  void initState() {
    super.initState();
    seconds = 0;
    timer = Timer.periodic(const Duration(seconds: 1), _onTick);
  }
  void _onTick(Timer time) {
    setState(() {
      ++seconds;
    });
  }

  String _secondsText() => seconds == 1 ? 'second' : 'seconds';

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('Rainbow vert')
      ),
      body: Center(
        child: Text(
          '$seconds ${_secondsText()}',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      // body: _buildRainbowVertical()
    );
  }

  Widget _buildRainbowVertical() {
    return Column(
        children: <Widget> [
          _violet(context),
          _indigo(context),
          _blue(context),
          _green(context),
          _yellow(context),
          _orange(context),
          _red(context),
          ]
    );
  }

  Widget _red(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(51.0),
      // child: Padding(
      //   padding: const EdgeInsets.all(60.0),
      //   child: Container(
      //     color: Colors.orange,
      //     child: Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: Container(
      //         color: Colors.yellow,
      //       ),
      //     ),
    );
  }

  Widget _orange(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: const EdgeInsets.all(51.0),
      // child: Padding(
      //     padding: const EdgeInsets.all(60.0),
      //     child: Container(
      //       color: Colors.blue,
      //       child: Padding(
      //         padding: const EdgeInsets.all(20.0),
      //         child: Container(
      //           color: Colors.indigo,
      //         ),
      //       ),
      //     )
      // )
    );
  }

  Widget _yellow(BuildContext context) {
    return Container(
      color: Colors.yellow,
      padding: const EdgeInsets.all(51.1),
      //     child: Padding(
      //         padding: const EdgeInsets.all(60.0),
      //         child: Container(
      //           color: Colors.purple,
      //           child: Padding(
      //             padding: const EdgeInsets.all(20.0),
      //             child: Container(
      //               color: Colors.indigo,
      //             ),
      //           ),
      //         )
      //     )
    );
  }

  Widget _green(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: const EdgeInsets.all(51.1),
    );
  }

  Widget _blue(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(51.1),
    );
  }

  Widget _indigo(BuildContext context) {
    return Container(
      color: Colors.indigo,
      padding: const EdgeInsets.all(51.1),
    );
  }

  Widget _violet(BuildContext context) {
    return Container(
      color: Colors.purple,
      padding: const EdgeInsets.all(51.1),
    );
  }
}
