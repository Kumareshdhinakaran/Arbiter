import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.blueGrey[100],
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
  );
}
