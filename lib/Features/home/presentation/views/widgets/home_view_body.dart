import 'package:bookly_bloc/Features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
      ],
    );
  }
}
