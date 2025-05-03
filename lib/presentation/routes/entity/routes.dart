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
  static const privacyPolicy = Routes._(name: 'privacy_policy', path: '/privacy_policy');

  static const setPassCode = Routes._(name: 'set_pass_code', path: '/set_pass_code');
  static const checkPassCode = Routes._(name: 'check_pass_code', path: '/check_pass_code');

  ///bottom_navigation_bar
  static const root = Routes._(name: 'root', path: '/root');

  ///Tabs
  static const home = Routes._(name: 'home', path: '/home');
  static const status = Routes._(name: 'status', path: '/status');
  static const qrCode = Routes._(name: 'qr_code', path: '/qr_code');
  static const tariff = Routes._(name: "tariff", path: '/tariff');
  static const profile = Routes._(name: 'profile', path: '/profile');

  ///home

  ///Tariff
  static const allTariff = Routes._(name: "all_tariff", path: '/all_tariff');
  static const tariffDetail = Routes._(name: "tariff_detail", path: '/tariff_detail');

  ///profile
  static const weightHeight = Routes._(name: "weight_height", path: '/weight_height');

  @override
  String toString() => 'name=$name, path=$path';
}
