part of 'profile_bloc.dart';

class ProfileState {
  final BlocStatus? status;

  final String? errorMessage;
  final ProfileResponse? profileResponse;
  final bool? isDefinitionExpanded;
  final List<PlanResponse>? plans;

  ProfileState({this.plans, this.isDefinitionExpanded, this.status, this.errorMessage, this.profileResponse});

  ProfileState copyWith({
    BlocStatus? status,
    String? errorMessage,
    bool? isDefinitionExpanded,
    List<PlanResponse>? plans,
    ProfileResponse? profileResponse,
  }) {
    return ProfileState(
      status: status ?? this.status,
      isDefinitionExpanded: isDefinitionExpanded ?? this.isDefinitionExpanded,
      errorMessage: errorMessage ?? this.errorMessage,
      profileResponse: profileResponse ?? this.profileResponse,
      plans: plans ?? this.plans,
    );
  }
}
