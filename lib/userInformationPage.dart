import 'package:flutter/material.dart';

class UserInformationPage extends StatelessWidget {
  const UserInformationPage(
      {super.key, required this.name, required this.surname});
  final String name;
  final String surname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Information'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Text('Name: $name'),
            Text('Surname: $surname'),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
