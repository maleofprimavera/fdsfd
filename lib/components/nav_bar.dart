import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = [];
    // Iterate over the list of items that you want to add to the BottomNavigationBar.
    for (int i = 0; i < 5; i++) {
      // For each item in the list, create a BottomNavigationBarItem widget.
      BottomNavigationBarItem bottomNavigationBarItem = BottomNavigationBarItem(
        icon: Icon(Icons.circle_rounded, size: 24),
        label: "",
      );
      items.add(bottomNavigationBarItem);
    }
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: items,
      selectedItemColor: Colors.green,
    );
  }
}
