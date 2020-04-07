import 'package:flutter/material.dart';
import 'package:udecor/locator.dart';
import 'package:udecor/ui/views/drawer_page.dart';
import 'package:udecor/services/authentication_service.dart';
import 'package:udecor/ui/widgets/appbar.dart';

class HomeView extends StatelessWidget {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(_authenticationService.currentUser.userRole);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce app',
      home: _authenticationService.currentUser.userRole == 'Admin'
          ? DrawerPage()
          : Scaffold(
              appBar: buildAppBar(),
              body: Center(
                child: Text('Hello world'),
              ),
            ),
    );
  }
}
