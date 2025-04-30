part of 'profile_bloc.dart';

class ProfileState {
  final BlocStatus? status;
  final BlocStatus? balanceStatus;
  final String? errorMessage;
  final ProfileResponse? profileResponse;
  final int? balance;

  ProfileState({this.balance, this.status, this.errorMessage, this.profileResponse, this.balanceStatus});

  ProfileState copyWith({
    BlocStatus? status,
    BlocStatus? balanceStatus,
    String? errorMessage,
    int? balance,
    ProfileResponse? profileResponse,
  }) {
    return ProfileState(
      balanceStatus: balanceStatus ?? this.balanceStatus,
      balance: balance ?? this.balance,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      profileResponse: profileResponse ?? this.profileResponse,
    );
  }
}
