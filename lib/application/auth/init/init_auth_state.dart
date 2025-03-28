part of 'init_auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

abstract class SignInState extends AuthState {}

class SignInLoading extends SignInState {}

class SignInError extends SignInState {
  final String error;

  SignInError(this.error);
}

class SignInSuccess extends SignInState {}

