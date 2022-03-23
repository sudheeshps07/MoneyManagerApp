import 'package:flutter/material.dart';
import 'package:untitled/_screens/category/expense-category_list.dart';
import 'package:untitled/_screens/category/icome_category_list.dart';

class Screen_category extends StatefulWidget {
  @override
  State<Screen_category> createState() => _Screen_categoryState();
}

class _Screen_categoryState extends State<Screen_category>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: const [
            Tab(
              text: 'INCOME',
            ),
            Tab(
              text: 'EXPENSE',
            ),
          ],
        ),
        Expanded(
          child: TabBarView(controller: _tabController, children: [
            ExpenseCategoryList(),
            IcomeCategoryList(),
          ]),
        )
      ],
    );
  }
}
