import 'dart:math';

import 'package:mazoleum/data/entities/maze_config.dart';
import 'package:mazoleum/engine/maze_generator.dart';
import 'package:mazoleum/engine/snake_maze_generator.dart';

import '../../engine/maze.dart';
import '../../engine/room.dart';
import '../entities/hud.dart';

class MazeRepository {
  final MazeGenerator _mazeGenerator = SnakeMazeGenerator();
  late final Hud _hud;
  late final Maze _maze;

  Future<Room> generateMaze(MazeConfig config) async {
    int mazeSize = (config is SizedMaze)
        ? config.size
        : Random().nextInt(5) + 15;

    _maze = _mazeGenerator.generateMaze(mazeSize);
    _hud = Hud(x: 0, y: 0);

    return _maze.getStartingRoom();
  }

  Future<Room> getRoomAt(int x, int y) async {
    _hud = Hud.updateHud(x, y);
    return _maze.getRoom(x, y);
  }

  Future<Hud> getUpdatedHud() async {
    return _hud;
  }
}
