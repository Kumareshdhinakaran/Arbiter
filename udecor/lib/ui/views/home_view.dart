import 'package:flutter/material.dart';
import 'package:udecor/ui/views/drawer_page.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce app',
      home: DrawerPage(),
    );
  }
}
