import 'package:flutter/material.dart';

class MazePage extends StatefulWidget {
  const MazePage({super.key});

  @override
  State<MazePage> createState() => _MazePageState();
}

class _MazePageState extends State<MazePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Maze Page"),
              ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/home');
                },
                child: Text("Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
