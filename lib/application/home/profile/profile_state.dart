part of 'profile_bloc.dart';

class ProfileState {
  final BlocStatus? status;

  final String? errorMessage;
  final ProfileResponse? profileResponse;

  ProfileState({this.status, this.errorMessage, this.profileResponse});

  ProfileState copyWith({
    BlocStatus? status,
    String? errorMessage,
    ProfileResponse? profileResponse,
  }) {
    return ProfileState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      profileResponse: profileResponse ?? this.profileResponse,
    );
  }
}
