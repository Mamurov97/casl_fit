part of 'profile_bloc.dart';

class ProfileEvent {}

class GetProfileDataEvent extends ProfileEvent {}

class GetPlansEvent extends ProfileEvent{}







//local Event
class DefinitionIsExpandedEvent extends ProfileEvent{
  bool isExpanded ;

  DefinitionIsExpandedEvent(this.isExpanded);
}