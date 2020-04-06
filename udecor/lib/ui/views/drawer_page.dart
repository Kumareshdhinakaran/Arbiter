import 'package:flutter/material.dart';
import 'package:udecor/ui/views/Seller_details.dart';
import 'package:udecor/ui/widgets/appbar.dart';
import 'package:udecor/ui/widgets/drawer_widget.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: DrawerWidget(),
      body: SellerDetails(),
    );
  }
}
