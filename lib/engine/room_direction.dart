enum RoomDirection {
  up(symbol: '↑'),
  down(symbol: '↓'),
  left(symbol: '←'),
  right(symbol: '→');

  final String symbol;

  const RoomDirection({required this.symbol});

  RoomDirection opposite() {
    return switch (this) {
      RoomDirection.up => RoomDirection.down,
      RoomDirection.down => RoomDirection.up,
      RoomDirection.left => RoomDirection.right,
      RoomDirection.right => RoomDirection.left,
    };
  }
}
