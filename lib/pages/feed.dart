import 'package:flutter/material.dart';

import '../components/nav_bar.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});
  @override
  Widget build(BuildContext context) {
    List<ListTile> listTile = [];
    for (int i = 0; i < 7; i++) {
      ListTile newListTile = ListTile(
        title: Text('Header'),
        subtitle: Text(
            "He'll want to use your yacht, and I don't want this thing smelling like fish."),
        trailing: Text('8m ago'),
      );
    }
    NavBar navBar = NavBar();
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),
        centerTitle: true,
        leading: TextButton(
          child: Text('Back'),
          onPressed: () {},
        ),
        actions: [
          TextButton(
            child: Text('Filter'),
            onPressed: () {},
          ),
        ],
      ),
      body:
          Column(
          children: [
            Flexible(
              flex: 1,
              child: SearchBar(
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Color.fromRGBO(246, 246, 246, 1)),
                hintText: 'Search',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
                flex: 6,
                child: Container(
                    height: 500,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 1),borderRadius: BorderRadius.circular(6)),
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: ListTile(
                              title: Text('Header'),
                              subtitle: Text(
                                  "He'll want to use your yacht, and I don't want this thing smelling like fish."),
                              trailing: Text('8m ago')),
                        ),
                        Container(
                          decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 1),borderRadius: BorderRadius.circular(6)),
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: ListTile(
                              title: Text('Header'),
                              subtitle: Text(
                                  "He'll want to use your yacht, and I don't want this thing smelling like fish."),
                              trailing: Text('8m ago')),
                        ),
                        Container(
                          decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 1),borderRadius: BorderRadius.circular(6)),
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: ListTile(
                              title: Text('Header'),
                              subtitle: Text(
                                  "He'll want to use your yacht, and I don't want this thing smelling like fish."),
                              trailing: Text('8m ago')),
                        ),
                        Container(
                          decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 1),borderRadius: BorderRadius.circular(6)),
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: ListTile(
                              title: Text('Header'),
                              subtitle: Text(
                                  "He'll want to use your yacht, and I don't want this thing smelling like fish."),
                              trailing: Text('8m ago')),
                        ),
                      ],
                    ),
                  ),
              ),
          SizedBox(height: 15,),
          Container(
            height: 200,
            decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 1),borderRadius: BorderRadius.circular(6)),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
        ]
      ),
      bottomNavigationBar: navBar,
    );
  }
}
