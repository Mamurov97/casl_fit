part of 'app_manager_cubit.dart';

@immutable
abstract class AppManagerState {}

class AppManagerInitial extends AppManagerState {}

class AppManagerLoading extends AppManagerState {}

class AppManagerError extends AppManagerState {
  AppManagerError(this.error);

  final String error;
}

class AppCheckVersionInitial extends AppManagerState {}

class AppCheckVersionSuccess extends AppManagerState {
  final bool update;
  final String updateStatus;

  AppCheckVersionSuccess(this.update, this.updateStatus);
}

class AppCheckVersionError extends AppManagerState {
  AppCheckVersionError(this.error);

  final String error;
}