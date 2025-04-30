import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static const String _token = 'token';
  static const String _userId = 'user_id';
  static const String _name = 'name';
  static const String _image = 'image';
  static const String _phone = 'phone';
  static const String _guid = 'guid';
  static const String _role = 'role';
  static const String _isAuthorized = 'is_authorized';
  static const String _passcode = 'passcode';
  static late SharedPreferences _preference;

  const SharedPrefService._();

  static Future<SharedPrefService> initialize() async {
    _preference = await SharedPreferences.getInstance();
    return const SharedPrefService._();
  }

  ///token
  void setToken(String token) => _preference.setString(_token, token);

  String get getToken => _preference.getString(_token) ?? '';

  ///userId
  void setUserId(int userId) => _preference.setInt(_userId, userId);

  int get getUserId => _preference.getInt(_userId) ?? 0;

  ///name
  void setName(String name) => _preference.setString(_name, name);

  String get getName => _preference.getString(_name) ?? '';

  ///image
  void setImage(String image) => _preference.setString(_image, image);

  String get getImage => _preference.getString(_image) ?? '';

  ///phone
  void setPhone(String phone) => _preference.setString(_phone, phone);

  String get getPhone => _preference.getString(_phone) ?? '';

  ///guid
  void setGuid(String guid) => _preference.setString(_guid, guid);

  String get getGuid => _preference.getString(_guid) ?? '';

  ///role
  void setRole(String role) => _preference.setString(_role, role);

  String get getRole => _preference.getString(_role) ?? '';

  ///authStatus
  void setAuthStatus(bool value) => _preference.setBool(_isAuthorized, value);

  bool get isAuthorized => _preference.getBool(_isAuthorized) ?? false;

  ///passcode
  void setPasscode(String value) => _preference.setString(_passcode, value);

  String get passcode => _preference.getString(_passcode) ?? '';

  ///clear
  void clear() => _preference.clear();
}
