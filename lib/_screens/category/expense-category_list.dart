import 'package:flutter/material.dart';
class ExpenseCategoryList extends StatelessWidget{
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return Card(
            child: ListTile(
              title: Text('expens categpry $index'),
              trailing: Icon(Icons.delete),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return SizedBox(
            height: 10,
          );
        },
        itemCount: 30);
  }
}
