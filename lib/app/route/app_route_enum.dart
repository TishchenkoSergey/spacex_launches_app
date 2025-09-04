enum Routes {
  launchesScreen('launches-screen');

  const Routes(this.name);

  final String name;

  @override
  String toString() => name;
}
