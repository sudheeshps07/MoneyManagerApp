import 'package:flutter/material.dart';

class Screentransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (ctx, index) {
          return Card(
            elevation: 0,
            child: ListTile(
              leading: CircleAvatar(radius: 50, child: Text('12 dec')),
              title: Text(
                '10000',
                textAlign: TextAlign.center,
              ),
              subtitle: Text('travel'),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: 20);
  }
}
