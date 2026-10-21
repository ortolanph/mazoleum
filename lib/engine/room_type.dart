enum RoomType {
  common(abbreviation: 'CM'),
  start(abbreviation: 'ST'),
  end(abbreviation: 'ED');

  final String abbreviation;

  const RoomType({required this.abbreviation});
}
