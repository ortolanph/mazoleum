import 'dart:math';

import 'package:mazoleum/engine/room.dart';
import 'package:mazoleum/engine/room_type.dart';

class MazeEngine {
  Map<String, Room> rooms = {};
  var visited = 0;

  void create(int width, height) {
    var startColumn = Random().nextInt(width + 1);
    var startRow = Random().nextInt(height + 1);

    var roomId = createRoomId(startColumn, startRow);
    rooms[roomId] = Room(
      id: int.parse(roomId),
      x: startColumn,
      y: startRow,
      type: RoomType.START,
    );

    visited++;
    walkFrom(rooms[roomId]);
  }

  String createRoomId(int x, int y) {
    return ((x * 1000) + y).toString();
  }

  void walkFrom(Room? room) {

  }
}