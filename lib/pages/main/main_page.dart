import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/routing/router.gr.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Text('MainPage'),
          ),
          ElevatedButton(
              onPressed: () => context.router.push(const ProfileRoute()),
              child: Text('Ok'))
        ],
      ),
    );
  }
}
