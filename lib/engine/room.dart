import 'package:mazoleum/engine/room_type.dart';

import 'direction.dart';

class Room {
  final int id;
  final int x;
  final int y;
  final RoomType type;
  late Map<Direction, String> neighbors = {};

  Room({
    required this.id,
    required this.x,
    required this.y,
    required this.type,
  });

  @override
  String toString() {
    return "[$id][$x, $y][$type][${neighbors.keys.map((d) => d.symbol()).join(', ')}]";
  }
}
