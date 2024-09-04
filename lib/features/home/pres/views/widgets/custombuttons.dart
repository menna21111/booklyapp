import 'package:booklyapp/core/utls/styles.dart';
import 'package:booklyapp/features/home/data/models/bookmodel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/func/launch_url.dart';
import 'buttoncustom.dart';

class Custombuttons extends StatelessWidget {
  const Custombuttons({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  34),
      child: Row(
        children: [ 
          Expanded(
              child: Buttoncustom(
                onPressed: () {
        
                },
            backgroundcolor: Colors.white,
            text: 'free',
            textcolor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14), bottomLeft: Radius.circular(14)),
          )),
          Expanded(
              child: Buttoncustom(
                onPressed: (){
launchCustomUr(context,bookModel.volumeInfo.previewLink??'');
  
                },
            backgroundcolor: Colors.orange.shade200,
            text: 'preview',
            textcolor: Colors.white,
            borderRadius:const BorderRadius.only(
                bottomRight: Radius.circular(14), topRight: Radius.circular(14)),
          ))
        ],
      ),
    );
  }
}
