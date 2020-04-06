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
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Image.asset('assets/images/icon_large.png'),
            ),
          ),
          Expanded(
            flex: 2,
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
                Divider(),
                ListTile(
                  title: Text("My profile"),
                  onTap: () => _navigationService.navigateTo(ProfilePageRoute),
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
    );
  }
}
