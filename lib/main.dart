import 'dart:async';

import 'app/app.dart';
import 'initialize/bootstrap.dart';

void main() async {
  unawaited(bootstrap(const App()));
}
