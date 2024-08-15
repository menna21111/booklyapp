import 'package:booklyapp/core/utls/styles.dart';
import 'package:flutter/material.dart';

import 'buttoncustom.dart';

class Custombuttons extends StatelessWidget {
  const Custombuttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  34),
      child: Row(
        children: [
        const  Expanded(
              child: Buttoncustom(
            backgroundcolor: Colors.white,
            text: '19.99',
            textcolor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14), bottomLeft: Radius.circular(14)),
          )),
          Expanded(
              child: Buttoncustom(
            backgroundcolor: Colors.orange.shade200,
            text: 'free preview',
            textcolor: Colors.white,
            borderRadius:const BorderRadius.only(
                bottomRight: Radius.circular(14), topRight: Radius.circular(14)),
          ))
        ],
      ),
    );
  }
}
