import 'package:flutter/material.dart';

class Slides {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String description;

  Slides(
      {@required this.imageUrl,
      @required this.title,
      @required this.subTitle,
      @required this.description});
}

final slideList = [
  Slides(
      imageUrl: 'images/plane1.jpg',
      title: 'Stay on Top',
      subTitle: 'of your weather flight reports',
      description: 'Providing you with the latest reports of all flight '
          'analysis for a better decision when choosing a flight world wide. '),
  Slides(
      imageUrl: 'images/plane2.jpg',
      title: 'Fly Easy',
      subTitle: 'While we do the work for you',
      description: 'Providing you with the latest reports of all flight '
          'analysis for a better decision when choosing a flight world wide. '),
  Slides(
      imageUrl: 'images/plane3.jpg',
      title: 'Don\'t be on the ground',
      subTitle: 'While your plane is air bound',
      description: 'Providing you with the latest reports of all flight '
          'analysis for a better decision when choosing a flight world wide. '),
];
