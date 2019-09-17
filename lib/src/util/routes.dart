import 'package:flutter/material.dart';

import '../ui/create/create_room_page.dart';
import '../ui/join/join_module.dart';
import '../ui/start/start_module.dart';

class Routes extends MaterialPageRoute {
  Routes({
    @required BuildContext context,
    @required RouteSettings settings,
  }) : super(
          settings: settings,
          // ignore: missing_return
          builder: (BuildContext context) {
            switch (settings.name) {
              case RoutesNames.start:
                return StartModule();
                break;
              case RoutesNames.join:
                return JoinModule();
                break;
              case RoutesNames.createRoom:
                return CreateRoomPage();
                break;
              default:
                break;
            }
          },
        );
}

class RoutesNames {
  static const String root = '/';
  static const String start = '/start';
  static const String join = '/join';
  static const String createRoom = '/create/room';
}
