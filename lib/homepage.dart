import 'package:flutter/material.dart';
import 'constants/requests.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final inst = ApiRequest();
    Future<int> response = inst.requestURL();
    return Scaffold(
      appBar: AppBar(title: const Text('Homepage')),
      body:  Center(child: ElevatedButton(child: Text('Click Me'), onPressed: () {
        response.then((value) => print(value));
      })),
    );
  }
}