import 'package:chef_profile/widgets/rating_stars.dart';
import 'package:flutter/material.dart';

class BuildCardMenu extends StatelessWidget {
  final String image, name, period;
  final double views, favorite;
  final int rating;
  const BuildCardMenu({
    super.key,
    required this.image,
    required this.rating,
    required this.views,
    required this.favorite,
    required this.name,
    required this.period,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 110,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 10.0),
            SizedBox(
              width: MediaQuery.of(context).size.width - 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    period,
                    style: const TextStyle(color: Colors.grey, fontSize: 16.0),
                  ),
                  const SizedBox(height: 10.0),
                  RatingStars(rating: rating),
                  Row(
                    children: <Widget>[
                      Icon(Icons.remove_red_eye,
                          color: Colors.grey.withOpacity(0.7)),
                      const SizedBox(width: 8.0),
                      Text('$views'),
                      const SizedBox(width: 10.0),
                      Icon(Icons.favorite,
                          color: (favorite > 0)
                              ? Colors.redAccent
                              : Colors.grey.withOpacity(0.7)),
                      const SizedBox(width: 8.0),
                      Text('$favorite'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
