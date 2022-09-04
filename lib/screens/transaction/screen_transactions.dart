import 'package:flutter/material.dart';

class ScreenTransactions extends StatelessWidget {
  const ScreenTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return const Card(
          elevation: .5,
          child: ListTile(
            leading: CircleAvatar(
              radius: 50,
              child: Text(
                '12\n DEC',
                textAlign: TextAlign.center,
              ),
            ),
            title: Text('RS 100000'),
            subtitle: Text('Travel'),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 5,
        );
      },
      itemCount: 20,
    );
  }
}
