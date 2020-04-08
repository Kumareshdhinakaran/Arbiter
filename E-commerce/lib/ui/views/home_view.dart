import 'package:flutter/material.dart';
import 'package:udecor/locator.dart';
import 'package:udecor/ui/views/drawer_page.dart';
import 'package:udecor/services/authentication_service.dart';
import 'package:udecor/ui/widgets/appbar.dart';
import 'package:udecor/ui/widgets/drawer_widget.dart';

class HomeView extends StatelessWidget {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce app',
      home: _authenticationService.currentUser.userRole != 'Admin'
          ? DrawerPage()
          : Scaffold(
              appBar: buildAppBar(),
              body: Center(
                child: Text('Shop Details Page'),
              ),
              drawer: DrawerWidget(),
            ),
    );
  }
}
