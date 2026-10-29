import 'package:mazoleum/engine/room_type.dart';

import 'room_direction.dart';

class Room {
  final int x;
  final int y;
  final RoomType type;
  late List<RoomDirection> exits = [];

  Room({required this.x, required this.y, required this.type});

  @override
  String toString() {
    return "[ $x, $y ][ ${type.abbreviation} ][ ${exits.map((d) => d.symbol).join('')} ]";
  }

  bool isStartingRoom() {
    return type == RoomType.start;
  }
}
