import 'package:flutter/material.dart';

class Unit {
  final String unit;
  final String title;
  final double progress;
  final Color color;
  final String percentage;
  Unit({
    required this.percentage,
    required this.color,
    required this.unit,
    required this.title,
    required this.progress,
  });
}
