part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.getNotifications({
    required int status,
  }) = GetNotifications;
  const factory NotificationEvent.showNotification(NotificationModel notification,int status) = ShowNotification;
  const factory NotificationEvent.readAllNotifications({required int status}) = ReadAllNotifications;
}
