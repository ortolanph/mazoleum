import 'dart:math';

import 'package:mazoleum/data/entities/maze_config.dart';
import 'package:mazoleum/engine/maze_generator.dart';
import 'package:mazoleum/engine/snake_maze_generator.dart';

import '../../engine/maze.dart';
import '../../engine/room.dart';

class MazeRepository {
  final MazeGenerator _mazeGenerator = SnakeMazeGenerator();
  late final Maze _maze;
  late final int currentX = 0;
  late final int currentY = 0;

  Future<Room> generateMaze(MazeConfig config) async {
    int mazeSize = (config is SizedMaze)
        ? config.size
        : Random().nextInt(5) + 15;

    _maze = _mazeGenerator.generateMaze(mazeSize);

    return _maze.getStartingRoom();
  }

  Future<Room> getRoomAt(int x, int y) async {
    return _maze.getRoom(x, y);
  }
}
