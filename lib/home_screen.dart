import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color _containerColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Color Picker",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _containerColor = Colors.red;
                  });
                },
                child: const Text("RED")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _containerColor = Colors.green;
                  });
                },
                child: const Text("GREEN")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _containerColor = Colors.blue;
                  });
                },
                child: const Text("BLUE")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _containerColor = Colors.yellow;
                  });
                },
                child: const Text("YELLOW")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _containerColor = Colors.orange;
                  });
                },
                child: const Text("ORANGE")),
            Container(
              height: 300,
              width: 300,
              color: _containerColor,
            ),
          ],
        ),
      ),
    );
  }
}
