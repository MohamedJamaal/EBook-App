import 'package:ebookapp/features/home/presentation/views/widgets/custom_Book_image.dart';
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
            child: CustomBookImage(
              imageUrl:
                  'https://images.adsttc.com/media/images/63d3/df58/7643/4a4d/2f1e/e451/medium_jpg/milan-architecture-city-guide-15-must-see-landmarks-and-15-contemporary-attractions-in-italys-fashion-capital_56.jpg?1674829706',
            ),
          );
        },
      ),
    );
  }
}
