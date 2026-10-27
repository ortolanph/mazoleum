import 'package:mazoleum/engine/maze_generator.dart';
import 'package:mazoleum/engine/snake_maze_generator.dart';

import '../../engine/maze.dart';
import '../../engine/room.dart';

class MazeRepository {
  final MazeGenerator _mazeGenerator = SnakeMazeGenerator();
  late final Maze _maze;

  Future<void> generateMaze(int mazeSize) async {
    _maze = _mazeGenerator.generateMaze(mazeSize);
  }

  Future<Room> getRoomAt(int x, int y) async {
    return _maze.getRoom(x, y);
  }
}
