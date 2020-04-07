import 'package:flutter/material.dart';
import 'package:udecor/constants/route_names.dart';
import 'package:udecor/locator.dart';
import 'package:udecor/services/navigation_service.dart';

class DrawerWidget extends StatelessWidget {
  final NavigationService _navigationService = locator<NavigationService>();

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
                  ListTile(
                    title: Text("Home"),
                    onTap: () => _navigationService.navigateTo(HomeViewRoute),
                  ),
                  ListTile(
                    title: Text("My orders"),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    title: Text("Checklist"),
                    onTap: () => _navigationService.navigateTo(CheckListRoute),
                  ),
                  ListTile(
                    title: Text("Settings"),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  ListTile(
                    title: Text("My profile"),
                    onTap: () =>
                        _navigationService.navigateTo(ProfilePageRoute),
                  ),
                  ListTile(
                    title: Text("logout"),
                    onTap: () => _navigationService.navigateTo(LoginViewRoute),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
