import 'package:mazoleum/engine/maze.dart';
import 'package:mazoleum/engine/maze_generator.dart';
import 'package:mazoleum/engine/snake_maze_generator.dart';
import 'package:test/test.dart';

void main() {
  group('Snake Maze Generator', () {
    test('Even Maze', () {
      MazeGenerator snakeMazeGenerator = SnakeMazeGenerator();

      Maze generated = snakeMazeGenerator.generateMaze(4);

      print(generated.printMaze());
    });
    test('Odd Maze', () {
      MazeGenerator snakeMazeGenerator = SnakeMazeGenerator();

      Maze generated = snakeMazeGenerator.generateMaze(5);

      print(generated.printMaze());
    });
  });
}
