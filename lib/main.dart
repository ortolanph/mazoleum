import 'package:flutter/material.dart';
import 'package:mazoleum/presentation/pages/home_page.dart';
import 'package:mazoleum/presentation/pages/maze_page.dart';

import 'data/entities/maze_config.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Mazoleum",
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomePage(),
        "/maze": (context) => MazePage(config: RandomMaze()),
      },
    ),
  );
}
