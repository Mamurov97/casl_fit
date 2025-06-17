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
        final response = await repo.getNotifications();
        if (response["status"] == true) {
          final notifications = response["result"].map<NotificationModel>((e) => NotificationModel.fromJson(e)).toList();
          emit(state.copyWith(statusGet: BlocStatus.success, notifications: notifications));
        } else {
          emit(state.copyWith(statusGet: BlocStatus.error, errorMessage: response["message"].toString()));
        }
      } catch (e) {
        emit(state.copyWith(statusGet: BlocStatus.error, errorMessage: e.toString()));
      }
    });

    on<ShowNotification>((event, emit) async {
      emit(state.copyWith(statusShow: BlocStatus.loading));
      try {
        final response = await repo.showNotification(event.notification.id!);
        if (response["status"] == true) {
          emit(state.copyWith(statusShow: BlocStatus.success));
          add(const GetNotifications());
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
          add(const GetNotifications());
        } else {
          emit(state.copyWith(statusReadAll: BlocStatus.error, errorMessage: response["message"].toString()));
        }
      } catch (e) {
        emit(state.copyWith(statusReadAll: BlocStatus.error, errorMessage: e.toString()));
      }
    });
  }
}
