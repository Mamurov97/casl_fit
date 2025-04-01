import 'coordinate.dart';

class Routes implements Coordinate {
  const Routes._({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;

  ///auth
  ///
  static const signIn = Routes._(name: 'sign_in_page', path: '/sign_in');
  static const register = Routes._(name: 'register_page', path: '/register');
  static const verify = Routes._(name: 'verify_page', path: '/verify');
  static const createPasscode = Routes._(name: 'set_passcode_page', path: '/set_passcode');
  static const checkPasscode = Routes._(name: 'check_passcode_page', path: '/check_passcode');

  ///bottom_navigation_bar
  static const root = Routes._(name: 'root', path: '/root');
  static const home = Routes._(name: 'home', path: '/home');

  static const status = Routes._(name: 'status', path: '/status');
  static const qrCode = Routes._(name: 'qr_code_page', path: '/qr_code');
  static const program = Routes._(name: 'program', path: '/program');
  static const profile = Routes._(name: 'profile', path: '/profile');


  ///profile
  static const selectedDefinitions= Routes._(name: "selectedDefinitions",path: '/selectedDefinitions');
  static const selectedDefinitionTab= Routes._(name: "selectedDefinitionTab",path: '/selectedDefinitionTab');
  @override
  String toString() => 'name=$name, path=$path';
}
