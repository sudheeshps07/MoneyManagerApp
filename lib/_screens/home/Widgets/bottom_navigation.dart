import 'package:flutter/material.dart';
import 'package:untitled/_screens/home/_screen_home.dart';

class MoneyManagerBottomnavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Screehome.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            currentIndex: updatedIndex,
            onTap: (newIndex) {
              Screehome.selectedIndexNotifier.value = newIndex;
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'transaction'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: 'category'),
            ]);
      },
    );
  }
}
