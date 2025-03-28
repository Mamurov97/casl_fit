part of 'init_auth_bloc.dart';

@immutable
abstract class AuthEvent {}
class SignInEvent extends AuthEvent {
  final String phone;
  final String password;

  SignInEvent({
    required this.phone,
    required this.password,
  });
}

