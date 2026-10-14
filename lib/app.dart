
import 'package:flutter/material.dart';

import 'package:new4/assignment8.dart';

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return const MaterialApp(
debugShowCheckedModeBanner: false,
home: UserProfileScreen(),
);
}
}