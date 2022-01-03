import 'package:flutter/material.dart';
import 'BlocArch.dart';
import 'flavors.dart';

void main() {
  Environment.appFlavor = Flavor.PROD;
  runApp(const BlocArch());
}
