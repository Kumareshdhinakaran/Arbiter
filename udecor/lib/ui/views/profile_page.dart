import 'package:flutter/material.dart';
import 'package:udecor/ui/widgets/appbar.dart';
import 'package:udecor/ui/widgets/drawer_widget.dart';

class ProfilePage extends StatelessWidget {
  final addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: buildAppBar(),
        drawer: DrawerWidget(),
        body: Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        ),
                      ],
                    ),
                    Divider(
                      indent: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Text('John Prasad M'),
                        Row(
                          children: <Widget>[
                            Icon(Icons.location_on),
                            Text('Bangalore'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: 40,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Personal details',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Address:',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Divider(
                          indent: 10,
                        ),
                        Text('51,Br.Apartment, Houston, Texas.'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Mobile Number:',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Divider(
                          indent: 10,
                        ),
                        Text('9988776655'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
