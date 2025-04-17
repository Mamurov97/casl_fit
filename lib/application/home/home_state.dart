part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({required BlocStatus status, String? errorMessage, int? liveUserCount}) = _HomeState;

  factory HomeState.initial() => const HomeState(status: BlocStatus.initial);
}
