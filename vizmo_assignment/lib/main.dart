import 'package:vizmo/app/app.dart';
import 'package:vizmo/bootstrap.dart';
import 'package:vizmo_repository/vizmo_repository.dart';

void main() {
  bootstrap(
    () => App(
      vizmoRepository: VizmoRepository(),
    ),
  );
}
