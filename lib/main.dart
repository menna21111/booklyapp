import 'package:flutter/material.dart';

import 'costant.dart';
import 'features/splach/pres/splachview.dart';

void main() {
  runApp(const Booklyapp());
}

class Booklyapp extends StatelessWidget {
  const Booklyapp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimarycolor),
      home: const Splachview(),
    );
  }
}


