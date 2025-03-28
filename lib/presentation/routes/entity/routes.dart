import 'coordinate.dart';

class Routes implements Coordinate {
  const Routes._({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;

  ///auth
  static const signIn = Routes._(name: 'sign_in_page', path: '/sign_in');
  static const createPasscode = Routes._(name: 'set_passcode_page', path: '/set_passcode');
  static const checkPasscode = Routes._(name: 'check_passcode_page', path: '/check_passcode');

  ///bottom_navigation_bar
  static const qrCode = Routes._(name: 'qr_code_page', path: '/qr_code');

  @override
  String toString() => 'name=$name, path=$path';
}
