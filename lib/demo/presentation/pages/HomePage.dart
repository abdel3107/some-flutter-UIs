import 'package:demo/demo/presentation/pages/mobileDashboard.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Some Flutter UIs'),
          backgroundColor: Colors.orange.shade50,
        ),
        body: ListView(
          children: [
            item(
              name: 'Simple Dashboard',
              route: MaterialPageRoute(
                builder: (BuildContext context) => const Mobiledashboard(),
              ),
            ),
          ],
        ));
  }

  Widget item({
    required String name,
    required Route route,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: ListTile(
        title: Center(child: Text(name)),
        tileColor: Colors.teal,
        textColor: Colors.white,
        titleTextStyle: const TextStyle(),
        onTap: () => Navigator.of(context).push(route),
      ),
    );
  }
}
