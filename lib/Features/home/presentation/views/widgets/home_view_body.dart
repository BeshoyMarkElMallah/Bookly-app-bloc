import 'package:bookly_bloc/Features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly_bloc/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_bloc/Features/home/presentation/views/widgets/featured_book_listview.dart';
import 'package:bookly_bloc/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBookListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
