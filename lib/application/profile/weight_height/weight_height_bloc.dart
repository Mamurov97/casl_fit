import 'package:bloc/bloc.dart';
import 'package:casl_fit/infrastructure/dto/models/home/profile/weight_height_response.dart';
import 'package:dio/dio.dart';
import '../../../../domain/common/enums/bloc_status.dart';
import '../../../infrastructure/repository/profile/profile_repository.dart';

part 'weight_height_event.dart';

part 'weight_height_state.dart';

class WeightHeightBloc extends Bloc<WeightHeightEvent, WeightHeightState> {
  WeightHeightBloc() : super(WeightHeightState()) {
    var repo = ProfileRepository();

    on<GetWeightHeightEvent>((event, emit) async {
      emit(state.copyWith(status: BlocStatus.loading, weightHeightEnum: event.weightHeightEnum));
      try {
        final Map<String, dynamic> data = event.weightHeightEnum == WeightHeightEnum.weight ? await repo.getWeight() : await repo.getHeight();
        if (data["status"]) {
          List<WeightHeightResponse> weightHeightList = data["result"]?.map<WeightHeightResponse>((element) => WeightHeightResponse.fromJson(element)).toList();
          if (weightHeightList.isNotEmpty) {
            emit(state.copyWith(status: BlocStatus.success, weightHeightList: weightHeightList));
          }  else{
            emit(state.copyWith(status: BlocStatus.empty));

          }
        } else {
          emit(state.copyWith(status: BlocStatus.error, errorMessage: data["error"]["message"]));
        }
      } on DioException catch (e) {
        emit(state.copyWith(status: BlocStatus.error, errorMessage: e.toString()));
      }
    });
    on<SetWeightHeightEvent>((event, emit) async {
      emit(state.copyWith(saveStatus: BlocStatus.loading));
      try {
        final Map<String, dynamic> data =
            event.weightHeightEnum == WeightHeightEnum.weight ? await repo.setWeight(weightHeight: event.weightHeight) : await repo.setHeight(weightHeight: event.weightHeight);
        if (data["status"]) {
          emit(state.copyWith(saveStatus: BlocStatus.success,isCreated: true));
        } else {
          emit(state.copyWith(saveStatus: BlocStatus.error, errorMessage: data["error"]));
        }
      } on DioException catch (e) {
        emit(state.copyWith(saveStatus: BlocStatus.error, errorMessage: e.toString()));
      }
    });
    on<WeightHeightEnumEvent>((event, emit) {
      emit(state.copyWith(weightHeightEnum: event.weightHeightEnum));

    });
  }

}
