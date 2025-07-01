import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/common/enums/bloc_status.dart';
import '../../../infrastructure/dto/models/home/notification_model.dart';
import '../../../infrastructure/repository/home/notification_repository.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final repo = NotificationRepository();

  NotificationBloc() : super(const NotificationState()) {
    on<GetNotifications>((event, emit) async {
      emit(state.copyWith(statusGet: BlocStatus.loading));

      try {
        final response = await repo.getNotifications(status: event.status);
        final notifications = response["result"].map<NotificationModel>((e) => NotificationModel.fromJson(e)).toList();

        if (event.status == 1) {
          emit(state.copyWith(
            newsNotifications: notifications,
            statusGet: notifications.isEmpty ? BlocStatus.empty : BlocStatus.success,
          ));
        } else if (event.status == 2) {
          emit(state.copyWith(
            personalNotifications: notifications,
            statusGet: notifications.isEmpty ? BlocStatus.empty : BlocStatus.success,
          ));
        }
      } catch (e) {
        emit(state.copyWith(
          statusGet: BlocStatus.error,
          errorMessage: e.toString(),
        ));
      }
    });


    on<ShowNotification>((event, emit) async {
      emit(state.copyWith(statusShow: BlocStatus.loading));
      try {
        final response = await repo.showNotification(event.notification.id!);
        if (response["status"] == true) {
          emit(state.copyWith(statusShow: BlocStatus.success));
          add( GetNotifications(status: event.status));
        } else {
          emit(state.copyWith(statusShow: BlocStatus.error, errorMessage: response["message"].toString()));
        }
      } catch (e) {
        emit(state.copyWith(statusShow: BlocStatus.error, errorMessage: e.toString()));
      }
    });

    on<ReadAllNotifications>((event, emit) async {
      emit(state.copyWith(statusReadAll: BlocStatus.loading));
      try {
        final response = await repo.readAllNotifications();
        if (response["status"] == true) {
          emit(state.copyWith(statusReadAll: BlocStatus.success));
          add( GetNotifications(status: event.status));
        } else {
          emit(state.copyWith(statusReadAll: BlocStatus.error, errorMessage: response["message"].toString()));
        }
      } catch (e) {
        emit(state.copyWith(statusReadAll: BlocStatus.error, errorMessage: e.toString()));
      }
    });
  }
}
