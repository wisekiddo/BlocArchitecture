import 'package:flutter/material.dart';
import 'BlocArch.dart';
import 'app.dart';
import 'flavors.dart';

void main() {
  Environment.appFlavor = Flavor.DEV;
  runApp(const BlocArch());
}
