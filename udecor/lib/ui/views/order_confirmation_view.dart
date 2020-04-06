import 'package:flutter/material.dart';
import 'package:udecor/constants/route_names.dart';
import 'package:udecor/locator.dart';
import 'package:udecor/services/navigation_service.dart';
import 'package:udecor/ui/widgets/appbar.dart';
import 'package:udecor/ui/widgets/drawer_widget.dart';
import 'package:udecor/ui/widgets/text_link.dart';

class OrderConfirmationView extends StatelessWidget {
  final NavigationService _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: DrawerWidget(),
      body: Center(
        child: Text(
          'Your order placed successfully',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w700,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
