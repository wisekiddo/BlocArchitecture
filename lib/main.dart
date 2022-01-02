import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'dart:developer' as developer;

import 'Application.dart';

void main() {
  const environment = String.fromEnvironment('env', defaultValue: 'prod');
  developer.log(environment, name: 'com.toolbone.bloc');

  runApp(const MyApp());
}