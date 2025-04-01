import 'package:bloc/bloc.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/infrastructure/dto/models/home/profile/plan_response.dart';
import 'package:casl_fit/infrastructure/dto/models/home/profile/profile_response.dart';
import 'package:casl_fit/infrastructure/repository/home/profile/profile_repository.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState()) {
    final repo = ProfileRepository();

    on<GetProfileDataEvent>((event, emit) async {
      emit(state.copyWith(status: BlocStatus.loading));
      try {
        final Map<String, dynamic> data = await repo.getProfileData();
        print(data);
        if (data["status"]) {
          emit(state.copyWith(status: BlocStatus.success, profileResponse: ProfileResponse.fromJson(data["result"])));
        } else {
          emit(state.copyWith(status: BlocStatus.error));
        }
      } on DioException catch (e) {
        emit(state.copyWith(status: BlocStatus.error, errorMessage: e.toString()));
      }
    });
    on<GetProfileDataEvent>((event, emit) async {
      emit(state.copyWith(status: BlocStatus.loading));
      try {
        final Map<String, dynamic> data = await repo.getProfileData();
        if (data["status"]) {
          List<PlanResponse> plans = data["data"]?.map<PlanResponse>((element) => PlanResponse.fromJson(element)).toList();

          emit(state.copyWith(status: BlocStatus.success, plans: plans));
        } else {
          emit(state.copyWith(status: BlocStatus.error));
        }
      } on DioException catch (e) {
        emit(state.copyWith(status: BlocStatus.error, errorMessage: e.toString()));
      }
    });

    on<DefinitionIsExpandedEvent>((event, emit) async {
      emit(state.copyWith(isDefinitionExpanded: event.isExpanded));
    });
  }
}
