import 'package:flutter/material.dart';
import 'package:flutter_money_manager/screens/category/screen_category.dart';
import 'package:flutter_money_manager/screens/home/widget/bottom_navigation.dart';
import 'package:flutter_money_manager/screens/transaction/screen_transactions.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages = const [
    ScreenTransactions(),
    ScreenCategories(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('MONEY MANAGER'),
        centerTitle: true,
      ),
      bottomNavigationBar: const MoneyManagerBottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, Widget? _) {
            return _pages[updatedIndex];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value == 0) {
            // ignore: avoid_print
            print('Transactions');
          } else {
            // ignore: avoid_print
            print('Categories');
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
