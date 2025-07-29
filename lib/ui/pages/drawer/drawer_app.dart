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
            ListTile(title: const Text("Item 1"), onTap: () {}),
            ListTile(title: const Text("Item 2"), onTap: () {}),
            ListTile(
              title: const Text("Close drawer"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return OutlinedButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: Text("Open drawer"),
            );
          }
        ),
      ),
    );
  }
}
