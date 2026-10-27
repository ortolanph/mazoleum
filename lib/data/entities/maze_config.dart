sealed class MazeConfig {}

class RandomMaze extends MazeConfig {}

class SizedMaze extends MazeConfig {
  final int size;

  SizedMaze({required this.size});
}
