import 'package:flutter/material.dart';
import '../model/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(slideList[index].imageUrl),
        ),
        SizedBox(
          height: 60,
        ),
        Column(
          children: [
            Text(
              slideList[index].title,
              style: TextStyle(
                color: Colors.blue.shade900,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              slideList[index].subTitle,
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20.0),
              child: Text(
                slideList[index].description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  height: 1.2,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
