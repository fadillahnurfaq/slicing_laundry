import 'package:flutter/material.dart';

class LocationModel {
  final String address;
  final String state;
  final String imagePath;
  final Color color;

  LocationModel({
    required this.address,
    required this.state,
    required this.imagePath,
    required this.color,
  });
}
