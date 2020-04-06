import 'package:udecor/ui/views/Products_view.dart';
import 'package:udecor/ui/views/check_list.dart';
import 'package:udecor/ui/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:udecor/constants/route_names.dart';
import 'package:udecor/ui/views/login_view.dart';
import 'package:udecor/ui/views/order_confirmation_view.dart';
import 'package:udecor/ui/views/profile_page.dart';
import 'package:udecor/ui/views/signup_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: LoginView(),
      );
    case SignUpViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: SignUpView(),
      );
    case HomeViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: HomeView(),
      );
    case ProductsViewRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: ProductsView(),
      );
    case OrderSuccessfulRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: OrderConfirmationView(),
      );
    case ProfilePageRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: ProfilePage(),
      );
    case CheckListRoute:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: CheckList(),
      );
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}

PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
  return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
      ),
      builder: (_) => viewToShow);
}
