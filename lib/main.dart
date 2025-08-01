import 'package:design/router/AppRouter.dart';
import 'package:design/ui/pages/drawer/drawer_app.dart';
import 'package:design/ui/pages/orientation/orientation_app.dart';
import 'package:design/ui/pages/tab_controller/tab_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        AppRouter.main: (context) => MainScreen(),
        AppRouter.drawer: (context) => DrawerApp(),
        AppRouter.orientation: (context) => OrientationApp(),
        AppRouter.tabApp: (context) => TabApp(),
      },
      initialRoute: AppRouter.main,
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildOutlineButton(
                context: context,
                route: AppRouter.drawer,
                text: "Drawer App",
              ),
              _buildOutlineButton(
                context: context,
                route: AppRouter.orientation,
                text: "Orientation App",
              ),
              _buildOutlineButton(
                context: context,
                route: AppRouter.tabApp,
                text: "Tab App",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOutlineButton({
    required BuildContext context,
    required String route,
    required String text,
  }) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(text),
      ),
    );
  }
}
