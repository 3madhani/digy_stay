import 'package:flutter/material.dart';

class FeatureItem {
  final Color color;
  final String lottie;
  final String title;
  final String routeName;

  const FeatureItem( {
    required this.routeName,
    required this.color,
    required this.lottie,
    required this.title,
  });
}
