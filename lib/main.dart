import 'package:flutter/material.dart';
import 'BlocArch.dart';
import 'constants/flavors.dart';
import 'dart:developer' as developer;

void main() {
  Environment.appFlavor = Environment.valueOf(const String.fromEnvironment('env').toUpperCase());
  developer.log(const String.fromEnvironment('env'), name: 'my.app.category');
  runApp(const BlocArch());
}
