import 'package:mazoleum/engine/maze.dart';
import 'package:mazoleum/engine/maze_generator.dart';

class SnakeMazeGenerator extends MazeGenerator {
  @override
  Maze generateMaze(int size) {
    throw UnimplementedError();
  }
}

// void main() {
//   int mazeSize = 5;
//
//   for (var y = 0; y < mazeSize; y++) {
//     if (y.isEven) {
//       print("even");
//       for (var x = 0; x < mazeSize; x++) {
//         print("(${x + 1},${y + 1})(hash=${calculateHash(x, y)})");
//       }
//     } else {
//       print("odd");
//       for (var x = mazeSize - 1; x >= 0; x--) {
//         print("(${x + 1},${y + 1})(hash=${calculateHash(x, y)})");
//       }
//     }
//   }
// }
//
// int calculateHash(int x, int y) {
//   return x * 1000 + y;
// }
