part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default(BlocStatus.initial) BlocStatus statusGet,
    @Default(BlocStatus.initial) BlocStatus statusShow,
    @Default(BlocStatus.initial) BlocStatus statusReadAll,
    @Default([]) List<NotificationModel> newsNotifications,
    @Default([]) List<NotificationModel> personalNotifications,
    String? errorMessage,
  }) = _NotificationState;
}
