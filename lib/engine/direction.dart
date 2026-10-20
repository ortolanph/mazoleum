enum Direction {
  up,
  down,
  left,
  right;

  Direction opposite() {
    return switch (this) {
      Direction.up => Direction.down,
      Direction.down => Direction.up,
      Direction.left => Direction.right,
      Direction.right => Direction.left,
    };
  }

  String symbol() {
    return switch (this) {
      Direction.up => '↑',
      Direction.down => '↓',
      Direction.left => '←',
      Direction.right => '→',
    };
  }
}
