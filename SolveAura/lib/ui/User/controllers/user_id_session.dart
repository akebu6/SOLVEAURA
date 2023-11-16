import 'package:flutter_session_manager/flutter_session_manager.dart';

class UserIDSession {
  var sessionManager = SessionManager();

  late String value;
  void saveUserID(String key, String value) async {
    await sessionManager.set(key, value);
    value = await SessionManager().get("userID");
  }

// method to retun the value of the key
  String getUserID() {
    return value;
  }
}
