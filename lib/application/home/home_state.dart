part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required BlocStatus status,
    required BlocStatus dailyUserCountStatus,
    required int weekDay,
    DailyCountResponse? dailyCountResponse,
    String? errorMessage,
    int? liveUserCount,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        status: BlocStatus.initial,
        dailyUserCountStatus: BlocStatus.initial,
        weekDay: (DateTime.now().weekday),
      );
}
