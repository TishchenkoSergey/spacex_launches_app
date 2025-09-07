/// Enum representing named routes in the application.
enum Routes {
  /// Route for the launches screen.
  launchesScreen('launches-screen');

  const Routes(this.name);

  /// The string representation of the route path.
  final String name;

  @override
  String toString() => name;
}
