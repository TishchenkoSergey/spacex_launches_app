import 'package:spacex_launches_app/app/app.dart';
import 'package:spacex_launches_app/bootstrap.dart';

void main() {
  bootstrap((result) {
    return App(serviceLocator: result.serviceLocator);
  });
}
