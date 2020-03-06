import 'dart:async';

class DarkBloc {
  final _themeController = StreamController<
      bool>(); //ignore this error, since the sink needs to stay open . we ll, always. until the app closes.
  get changeTheme => _themeController.sink.add;
  get darkThemeEnabled => _themeController.stream;
}

final themeBloc = DarkBloc();
