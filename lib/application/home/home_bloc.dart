import 'package:bloc/bloc.dart';
import 'package:casl_fit/infrastructure/dto/models/home/daily_count_response.dart';
import 'package:casl_fit/infrastructure/repository/home/home_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/common/enums/bloc_status.dart';
part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    final repo = HomeRepository();

    on<GetLiveCountUserEvent>((event, emit) async {
      try {
        emit(state.copyWith(status: BlocStatus.loading));
        final response = await repo.getUserLiveCount();

        emit(state.copyWith(status: BlocStatus.success, liveUserCount: response['result']['kolvo']));
      } catch (e) {
        emit(state.copyWith(
          status: BlocStatus.error,
          errorMessage: e.toString(),
        ));
      }
    });

    on<GetDailyUserCountEvent>((event, emit) async {
      try {
        emit(state.copyWith(dailyUserCountStatus: BlocStatus.loading));
        final response = await repo.getDailyUserCount();
        DailyCountResponse dailyCountResponse = DailyCountResponse.fromJson(response["result"]);
        emit(state.copyWith(dailyUserCountStatus: BlocStatus.success, dailyCountResponse: dailyCountResponse));
      } catch (e) {
        emit(state.copyWith(
          dailyUserCountStatus: BlocStatus.error,
          errorMessage: e.toString(),
        ));
      }
    });

    on<GetWeekDayEvent>((event, emit) async {
      emit(state.copyWith(weekDay: event.weekDay));
    });
  }
}
//List<DailyCountResponse> dailyList = response["result"]["data"]?.map<DailyCountResponse>((element) => DailyCountResponse.fromJson(element)).toList();
/* on<GetMeEvent>((event, emit) async {
      emit(state.copyWith(status: BlocStatus.loading));
      try {
        final Map<String, dynamic> data = await repo.getMe();
        emit(state.copyWith(status: BlocStatus.success, homeResponse: HomeResponse.fromJson(data["result"])));
      } on DioException catch (e) {
        emit(state.copyWith(status: BlocStatus.error, errorMessage: e.toString()));
      }
    });*/
