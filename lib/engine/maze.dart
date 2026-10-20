import 'package:mazoleum/engine/maze_functions.dart';
import 'package:mazoleum/engine/room.dart';

class Maze {
  final Map<int, Room> maze;

  Maze({required this.maze});

  Room getRoom(int x, int y) {
    return maze[calculateHash(x, y)]!;
  }

  Room getRoomById(int id) {
    return maze[id]!;
  }
}
