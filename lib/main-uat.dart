import 'package:flutter/material.dart';
import 'BlocArch.dart';
import 'flavors.dart';

void main() {
  Environment.appFlavor = Flavor.UAT;
  runApp(const BlocArch());
}
