part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getNotificationCount() = GetNotificationCountEvent;
  const factory HomeEvent.getLiveUserCount() = GetLiveCountUserEvent;
  const factory HomeEvent.getDailyUserCount() = GetDailyUserCountEvent;
  const factory HomeEvent.getWeekDay(int weekDay) = GetWeekDayEvent;

}

