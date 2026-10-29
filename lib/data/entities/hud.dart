class Hud {
  final int x;
  final int y;

  Hud({required this.x, required this.y});

  factory Hud.updateHud(int x, int y) {
    return Hud(x: x, y: y);
  }
}
