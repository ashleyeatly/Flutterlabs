import 'package:flutter/material.dart';

class LabScreen extends StatelessWidget {
  const LabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Rainbow')
      ),
        body: Column(
          children: <Widget> [
            _violet(context),
            _indigo(context),
            _blue(context),
            _green(context),
            _yellow(context),
            _orange(context),
            _red(context),
          ],
         ),
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