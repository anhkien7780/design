import 'package:flutter/material.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App with hamburger button")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Drawer Header"),
            ),
            ListTile(
              title: const Text("Item 1"),
              onTap: (){},
            ),
            ListTile(
              title: const Text("Item 2"),
              onTap: (){},
            ),
            ListTile(
              title: const Text("Item 3"),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
