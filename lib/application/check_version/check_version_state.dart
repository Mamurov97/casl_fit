part of 'check_version_cubit.dart';

@immutable
sealed class CheckVersionState {}

class AppCheckVersionInitial extends CheckVersionState {}

class AppCheckVersionSuccess extends CheckVersionState {
  final bool update;
  final String updateStatus;
  final List<String> features;

  AppCheckVersionSuccess(this.update, this.updateStatus, this.features);
}

class AppCheckVersionError extends CheckVersionState {
  AppCheckVersionError(this.error);

  final String error;
}
