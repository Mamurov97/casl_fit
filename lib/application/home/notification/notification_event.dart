part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.getNotifications() = GetNotifications;
  const factory NotificationEvent.showNotification(NotificationModel notification) = ShowNotification;
  const factory NotificationEvent.readAllNotifications() = ReadAllNotifications;
}
