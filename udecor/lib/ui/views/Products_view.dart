import 'package:flutter/material.dart';
import 'package:udecor/constants/route_names.dart';
import 'package:udecor/locator.dart';
import 'package:udecor/services/authentication_service.dart';
import 'package:udecor/services/navigation_service.dart';
import 'package:udecor/ui/widgets/appbar.dart';
import 'package:udecor/ui/widgets/drawer_widget.dart';

class ProductsView extends StatefulWidget {
  @override
  _ProductsViewState createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  final NavigationService _navigationService = locator<NavigationService>();
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  num _value = 0;
  int _availab;
  int _noOfItems = 0;
  num _val;
  final List<Map<String, Object>> _products = [
    {
      'sNo': 1,
      'name': 'Product1',
      'availablity': 12,
      'cost': 10.0,
    },
    {
      'sNo': 2,
      'name': 'Product2',
      'availablity': 50,
      'cost': 47.0,
    },
    {
      'sNo': 3,
      'name': 'Product3',
      'availablity': 10,
      'cost': 98.0,
    },
    {
      'sNo': 4,
      'name': 'Product4',
      'availablity': 150,
      'cost': 20.0,
    },
    {
      'sNo': 5,
      'name': 'Product5',
      'availablity': 30,
      'cost': 10.0,
    },
  ];

  num get getValue {
    return _value;
  }

  void _cartValue(num val, int avail, int s_no) {
    setState(() {
      _val = s_no;
      _value += val;
      _noOfItems += 1;
      _availab = avail;
      _availab -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: buildAppBar(),
        drawer: DrawerWidget(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _authenticationService.currentUser.userRole != 'Admin'
                    ? Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'Cart Value:',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                              Divider(
                                indent: 10.0,
                              ),
                              Text(
                                '$_value',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'No of items purchased:',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                              Divider(
                                indent: 10.0,
                              ),
                              Text(
                                '$_noOfItems',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : SizedBox(),
                Divider(),
                Table(
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text('S.No'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text('Product Name'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text('Available'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text('Cost'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text('Add'),
                        ),
                      ],
                    ),
                    ...(_products).map((product) {
                      int product2 = product['availablity'];
                      int sno = product['sNo'];
                      if (_availab == product2 - 1 && _val == sno)
                        product['availablity'] = _availab;
                      return (buildTableRow(product['sNo'], product['name'],
                          product['availablity'], product['cost']));
                    }).toList(),
                  ],
                ),
                Divider(),
                _authenticationService.currentUser.userRole == 'Admin'
                    ? Container(
                        color: Colors.pink[100],
                        child: FlatButton(
                          onPressed: () {},
                          child: Text('Add Item'),
                        ),
                      )
                    : SizedBox(),
                _authenticationService.currentUser.userRole != 'Admin'
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton(
                            color: Colors.grey[400],
                            child: Text('Check out'),
                            onPressed: getValue > 100
                                ? () => _navigationService
                                    .navigateTo(OrderSuccessfulRoute)
                                : () {
                                    return showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          // Retrieve the text the that user has entered by using the
                                          // TextEditingController.
                                          content: Text(
                                              "Cart value must be greater than 100"),
                                        );
                                      },
                                    );
                                  },
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TableRow buildTableRow(int sNo, String name, int available, num cost) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text('$sNo'),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text('$name'),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text('$available'),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text('$cost'),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: FlatButton(
            onPressed: () {
              _cartValue(cost, available, sNo);
            },
            child: Text('Add'),
            color: Colors.blue[400],
          ),
        )
      ],
    );
  }
}
