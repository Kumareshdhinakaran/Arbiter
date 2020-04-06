import 'package:flutter/material.dart';
import 'package:udecor/constants/route_names.dart';
import 'package:udecor/locator.dart';
import 'package:udecor/services/navigation_service.dart';

AppBar buildAppBar() {
  final NavigationService _navigationService = locator<NavigationService>();

  return AppBar(
    backgroundColor: Colors.grey[50],
    title: Text(
      "Arbiter",
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    leading: new Builder(
      builder: (context) {
        return IconButton(
          icon: Icon(
            Icons.menu,
          ),
          color: Colors.black45,
          onPressed: () => Scaffold.of(context).openDrawer(),
        );
      },
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.person),
        color: Colors.black45,
        onPressed: () => _navigationService.navigateTo(ProfilePageRoute),
      ),
    ],
  );
}
