import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final int rating;
  const RatingStars({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List<Widget>.generate(
            5,
            (index) => Icon(
                  Icons.star,
                  color: (rating > index)
                      ? Colors.yellow
                      : Colors.grey.withOpacity(0.7),
                ),
            growable: false));
  }
}
