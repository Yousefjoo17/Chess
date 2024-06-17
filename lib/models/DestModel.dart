class DestModel {
  double? x;
  double? y;

  DestModel({required this.x, required this.y});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DestModel &&
        other.x == x &&
        other.y == y;
  }

  @override
  int get hashCode => x.hashCode ^ y.hashCode;
}