import 'package:flutter/material.dart';
import 'package:udecor/ui/widgets/appbar.dart';
import 'package:udecor/ui/widgets/drawer_widget.dart';

class CheckList extends StatefulWidget {
  @override
  _CheckListState createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  List<String> myWishList = [];
  TextEditingController myController;
  void initState() {
    super.initState();
    myController = TextEditingController();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  void listAdded(String value) {
    setState(() {
      myWishList.add(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    int val;
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: buildAppBar(),
        drawer: DrawerWidget(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  child: TextField(
                    controller: myController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your needs',
                    ),
                  ),
                ),
                FlatButton(
                  child: Text('Add Item'),
                  color: Colors.blue,
                  onPressed: () => listAdded(myController.text),
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'My Wish List',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ...myWishList.map((e) {
                    val = myWishList.indexOf(e) + 1;
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Text('$val    ' + e),
                    );
                  }).toList()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
