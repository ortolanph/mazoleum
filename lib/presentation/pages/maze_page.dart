import 'package:flutter/material.dart';
import 'package:mazoleum/data/maze_config.dart';

class MazePage extends StatefulWidget {
  const MazePage({super.key, required this.config});

  final MazeConfig config;

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
