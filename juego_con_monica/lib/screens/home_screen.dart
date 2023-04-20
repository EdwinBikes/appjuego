import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adivinanzas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Cultura General'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text('Historia'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text('Geografía'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text('Deportes'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text('Cultura Popular'),
              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text('Chistes'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
