import 'package:flutter/material.dart';
import 'package:udecor/constants/route_names.dart';
import 'package:udecor/locator.dart';
import 'package:udecor/services/navigation_service.dart';

class SellerDetails extends StatelessWidget {
  final NavigationService _navigationService = locator<NavigationService>();

  SellerDetails({
    Key key,
  }) : super(key: key);

  final List<String> entries = const <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey[200],
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: FlatButton(
              focusColor: Colors.lime,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.person_outline),
                    onPressed: null,
                  ),
                  Divider(
                    indent: 10,
                  ),
                  Text(
                    'Seller ${entries[index]}',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              onPressed: () => _navigationService.navigateTo(ProductsViewRoute),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
