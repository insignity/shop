import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String string;

  const ProfilePage({super.key, required this.string});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () => context.router.pop('sky'), child: Text('back')),
        Container(child: Text('profilePage' + string)),
      ],
    );
  }
}
