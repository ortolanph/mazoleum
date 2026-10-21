import 'package:mazoleum/engine/maze_functions.dart';
import 'package:mazoleum/engine/room.dart';

class Maze {
  final Map<int, Room> maze;
  final int mazeSize;

  Maze({required this.maze, required this.mazeSize});

  Room getRoom(int x, int y) {
    return maze[calculateHash(x, y)]!;
  }

  Room getRoomById(int id) {
    return maze[id]!;
  }

  String printMaze() {
    String maze = "";
    for (var y = 0; y < mazeSize; y++) {
      var mazeLine = "";
      for (var x = 0; x < mazeSize; x++) {
        mazeLine += getRoom(x, y).toString();
      }
      maze += "$mazeLine\n";
    }

    return maze;
  }
}
