
import 'package:flutter/material.dart';

import 'screen1.dart';
import 'screen2.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/screen1',
    routes: {
      '/screen1' :(context) => Screen1(),
      '/screen2' :(context) => Screen2(name: '',)

    },
    debugShowCheckedModeBanner: false,
  ));
}

