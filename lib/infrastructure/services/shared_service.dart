import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static const String _token = 'token';
  static const String _name = 'name';
  static const String _branchName = 'branch_name';
  static const String _workerName = 'worker_name';
  static const String _branchId = 'branch_id';
  static const String _workerId = 'worker_id';
  static const String _phone = 'phone';
  static const String _role = 'role';
  static const String _isAuthorized = 'is_authorized';
  static const String _passcode = 'passcode';
  static late SharedPreferences _preference;

  const SharedPrefService._();

  static Future<SharedPrefService> initialize() async {
    _preference = await SharedPreferences.getInstance();
    return const SharedPrefService._();
  }

  void setToken(String token) => _preference.setString(_token, token);

  String get getToken => _preference.getString(_token) ?? '';

  void setName(String name) => _preference.setString(_name, name);

  String get getName => _preference.getString(_name) ?? '';

  void setBranchName(String branchName) => _preference.setString(_branchName, branchName);

  String get getBranchName => _preference.getString(_branchName) ?? '';

  void setBranchId(int branchId) => _preference.setInt(_branchId, branchId);

  int get getBranchId => _preference.getInt(_branchId) ?? 0;

  void setWorkerName(String workerName) => _preference.setString(_workerName, workerName);

  String get getWorkerName => _preference.getString(_workerName) ?? '';

  void setWorkerId(int workerId) => _preference.setInt(_workerId, workerId);

  int get getWorkerId => _preference.getInt(_workerId) ?? 0;

  void setPhone(String phone) => _preference.setString(_phone, phone);

  String get getPhone => _preference.getString(_phone) ?? '';

  void setRole(String role) => _preference.setString(_role, role);

  String get getRole => _preference.getString(_role) ?? '';

  void setAuthStatus(bool value) => _preference.setBool(_isAuthorized, value);

  bool get isAuthorized => _preference.getBool(_isAuthorized) ?? false;

  void setPasscode(String value) => _preference.setString(_passcode, value);

  String get passcode => _preference.getString(_passcode) ?? '';

  void clear() => _preference.clear();
}
