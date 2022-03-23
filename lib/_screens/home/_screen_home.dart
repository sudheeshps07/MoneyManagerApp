import 'package:flutter/material.dart';
import 'package:untitled/_screens/category/screen_category.dart';
import 'package:untitled/_screens/home/Widgets/bottom_navigation.dart';
import 'package:untitled/_screens/transaction/screen_transaction.dart';

class Screehome extends StatelessWidget {
  final page = [
    Screen_category(),
    Screentransaction(),
  ];
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('MONE MANAGER'),
        centerTitle: true,
      ),
      bottomNavigationBar: MoneyManagerBottomnavigator(),
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (BuildContext context, int updatedIndex, Widget? _) {
          return page[updatedIndex];
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value==0){
            print('transaction');
          }else{
            print ('category');
          }

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
