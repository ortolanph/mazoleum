import 'package:mazoleum/engine/maze.dart';
import 'package:mazoleum/engine/maze_functions.dart';
import 'package:mazoleum/engine/maze_generator.dart';
import 'package:mazoleum/engine/room.dart';
import 'package:mazoleum/engine/room_direction.dart';
import 'package:mazoleum/engine/room_type.dart';

class SnakeMazeGenerator extends MazeGenerator {
  @override
  Maze generateMaze(int mazeSize) {
    Map<int, Room> maze = {};

    for (var y = 0; y < mazeSize; y++) {
      for (var x = 0; x < mazeSize; x++) {
        maze[calculateHash(x, y)] = _createRoom(x, y, mazeSize);
      }
    }

    return Maze(maze: maze, mazeSize: mazeSize);
  }

  Room _createRoom(int x, int y, int mazeSize) {
    RoomType roomType = _calculateRoomType(x, y, mazeSize);

    Room room = Room(x: x, y: y, type: roomType);
    room.exits = _calculateRoomExits(x, y, mazeSize);

    return room;
  }

  RoomType _calculateRoomType(int x, int y, int mazeSize) {
    if (x == 0 && y == 0) {
      return RoomType.start;
    }

    if (mazeSize.isEven) {
      if (x == 0 && y == mazeSize - 1) {
        return RoomType.end;
      }
    } else {
      if (x == mazeSize - 1 && y == mazeSize - 1) {
        return RoomType.end;
      }
    }

    return RoomType.common;
  }

  List<RoomDirection> _calculateRoomExits(int x, int y, int mazeSize) {
    List<RoomDirection> exits = [
      RoomDirection.up,
      RoomDirection.down,
      RoomDirection.left,
      RoomDirection.right,
    ];

    if (x == 0) {
      exits.remove(RoomDirection.left);

      if (y == 0) {
        exits.remove(RoomDirection.up);
        exits.remove(RoomDirection.down);
      }
    }

    if (x == mazeSize - 1) {
      exits.remove(RoomDirection.right);
    }

    if (x > 0 && x < mazeSize - 1) {
      exits.remove(RoomDirection.up);
      exits.remove(RoomDirection.down);
    }

    if (y == 0 && x == mazeSize - 1) {
      exits.remove(RoomDirection.up);
    }

    if (y.isOdd && x == 0) {
      exits.remove(RoomDirection.up);
    }

    if (y.isEven && x == 0) {
      exits.remove(RoomDirection.down);
    }

    if (y.isOdd && x == mazeSize - 1) {
      exits.remove(RoomDirection.down);
    }

    if (y.isEven && x == mazeSize - 1) {
      exits.remove(RoomDirection.up);
    }

    if (mazeSize.isEven) {
      if (x == 0 && y == mazeSize - 1) {
        exits.remove(RoomDirection.down);
      }
    } else {
      if (x == mazeSize - 1 && y == mazeSize - 1) {
        exits.remove(RoomDirection.down);
      }
    }

    return exits;
  }
}
