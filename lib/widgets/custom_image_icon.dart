
import 'package:flutter/material.dart';
import 'dart:ui';

iconAssetImage(
String image,[
  double? size,
Color?color,
]
)=> Image.asset(
  height: size ?? 25,
  width:  size ?? 25,
  image,
  color: color,
);