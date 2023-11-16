import 'package:flutter_session_manager/flutter_session_manager.dart';

class SessionController {
  static final SessionController _session = SessionController._internal();

  String? userid;

  factory SessionController() {
    return _session;
  }

  SessionController._internal() {}
}
