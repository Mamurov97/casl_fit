part of 'profile_bloc.dart';

class ProfileEvent {}

class GetProfileDataEvent extends ProfileEvent {}

class GetUserBalance extends ProfileEvent {
  String? clientGuid;

  GetUserBalance({ this.clientGuid});
}
