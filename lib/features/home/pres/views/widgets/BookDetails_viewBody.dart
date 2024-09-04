import 'package:booklyapp/core/utls/styles.dart';
import 'package:flutter/material.dart';
import '../../../data/models/bookmodel.dart';
import 'CustomListitem.dart';
import 'custombookdetailsAppbar.dart';
import 'custombuttons.dart';
import 'customrating.dart';
import 'similiarbooklist.dart';

class BookdetailsViewbody extends StatelessWidget {
  const BookdetailsViewbody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
              const Custombookdetailsappbar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .32, vertical: 18),
                child: Customlistitem(
                  imageurl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
                ),
              ),
              Text(
                bookModel.volumeInfo.title ?? '',
                style: Styles.styles20,
                textAlign: TextAlign.center,
              ),
              Opacity(
                opacity: .7,
                child: Text(
                  bookModel.volumeInfo.authors?[0] ?? '',
                  style: Styles.styles18,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Customrating(
                    numrating: bookModel.volumeInfo.ratingsCount ?? 0,
                    rating: bookModel.volumeInfo.averageRating ?? 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Custombuttons(bookModel: bookModel),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'You can also Like',
                      style: Styles.styles16.copyWith(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        // Similar book list should be in its own Sliver to scroll correctly
        SliverToBoxAdapter(
          child: Similiarbooklist(),
        ),
      ],
    ); }
}
