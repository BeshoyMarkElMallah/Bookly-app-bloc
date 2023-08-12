import 'package:bookly_bloc/Features/home/presentation/views/widgets/featured_listview_item.dart';
import 'package:flutter/material.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: FeaturedListViewItem(),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
