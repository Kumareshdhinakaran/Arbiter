import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  final List<String> entries = <String>[
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        title: Text(
          "Arbiter",
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
        leading: new Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
              ),
              color: Colors.black45,
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.black45,
            onPressed: null,
          ),
        ],
      ),
      drawer: Drawer(
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
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    title: Text("My orders"),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    title: Text("Checklist"),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
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
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    title: Text("logout"),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 80,
              color: Colors.grey[200],
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.person_outline),
                    onPressed: null,
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
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
