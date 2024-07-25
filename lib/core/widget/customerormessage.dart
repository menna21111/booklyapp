import 'package:flutter/material.dart';

class CustomErorMessage extends StatelessWidget {
  const CustomErorMessage({super.key,required this.erormessage});
  final String erormessage;
  @override
  Widget build(BuildContext context) {
    return Text(erormessage,style:const TextStyle(color: Colors.black,),);
  }
}
