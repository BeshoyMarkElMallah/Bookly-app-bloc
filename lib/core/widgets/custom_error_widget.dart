import 'package:bookly_bloc/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errmsg});
  final String errmsg;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errmsg,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
