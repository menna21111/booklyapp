import 'package:flutter/material.dart';

import 'widgets/BookDetails_viewBody.dart';

class BookdetatailsView extends StatelessWidget {
  const BookdetatailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        body: BookdetailsViewbody(),
      ),
    );
  }
}