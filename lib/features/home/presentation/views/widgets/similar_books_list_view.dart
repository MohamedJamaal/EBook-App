import 'package:ebookapp/features/home/presentation/views/widgets/custom_Book_item.dart';
import 'package:flutter/material.dart';

class SilmilarBooksListView extends StatelessWidget {
  const SilmilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
