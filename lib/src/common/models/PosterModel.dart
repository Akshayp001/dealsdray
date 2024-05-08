import 'package:flutter/material.dart';

class PosterModel {
  final String imageUrl;
  final VoidCallback onClick;

  PosterModel({
    required this.imageUrl,
    required this.onClick,
  });
}