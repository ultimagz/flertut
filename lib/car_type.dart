class CarType {
  final String key;
  final String name;

  const CarType(this.key, this.name);

  bool operator==(Object other) => other is CarType && other.key == key;

  @override
  int get hashCode => key.hashCode;

  @override
  String toString() => "$name";
}