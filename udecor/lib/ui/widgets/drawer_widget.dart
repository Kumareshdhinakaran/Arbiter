import 'package:flutter/material.dart';
import 'package:udecor/constants/route_names.dart';
import 'package:udecor/locator.dart';
import 'package:udecor/services/authentication_service.dart';
import 'package:udecor/services/navigation_service.dart';

class DrawerWidget extends StatelessWidget {
  final NavigationService _navigationService = locator<NavigationService>();
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  DrawerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        top: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/images/icon_large.png'),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _authenticationService.currentUser.userRole != 'Admin'
                      ? Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.home),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: ListTile(
                                    title: Text("Home"),
                                    onTap: () => _navigationService
                                        .navigateTo(HomeViewRoute),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.shopping_cart,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: ListTile(
                                    title: Text("My Orders"),
                                    onTap: () {},
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.event_note,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: ListTile(
                                    title: Text("Checklist"),
                                    onTap: () => _navigationService
                                        .navigateTo(CheckListRoute),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.settings,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: ListTile(
                                    title: Text("settings"),
                                    onTap: () {},
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.person_outline,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: ListTile(
                                    title: Text("My profile"),
                                    onTap: () => _navigationService
                                        .navigateTo(ProfilePageRoute),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.exit_to_app,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: ListTile(
                                    title: Text("logout"),
                                    onTap: () => _navigationService
                                        .navigateTo(LoginViewRoute),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.home),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: ListTile(
                                    title: Text("Home"),
                                    onTap: () => _navigationService
                                        .navigateTo(HomeViewRoute),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.person_outline,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: ListTile(
                                    title: Text("My profile"),
                                    onTap: () => _navigationService
                                        .navigateTo(ProfilePageRoute),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.add_box,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: ListTile(
                                    title: Text("Add Items"),
                                    onTap: () => _navigationService
                                        .navigateTo(ProductsViewRoute),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.2,
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.exit_to_app,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: ListTile(
                                    title: Text("logout"),
                                    onTap: () => _navigationService
                                        .navigateTo(LoginViewRoute),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
      elevation: 5,
    );
  }
}
