part of 'check_version_cubit.dart';

@immutable
sealed class CheckVersionState {}

class AppCheckVersionInitial extends CheckVersionState {}

class AppCheckVersionSuccess extends CheckVersionState {
  final bool update;
  final String updateStatus;

  AppCheckVersionSuccess(this.update, this.updateStatus);
}

class AppCheckVersionError extends CheckVersionState {
  AppCheckVersionError(this.error);

  final String error;
}
