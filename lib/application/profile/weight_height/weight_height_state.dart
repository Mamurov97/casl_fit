part of 'weight_height_bloc.dart';

class WeightHeightState {
  final BlocStatus? status;
  final BlocStatus? saveStatus;
  final String? errorMessage;
  final List<WeightHeightResponse>? weightHeightList;
  final WeightHeightEnum? weightHeightEnum;
  final bool? isCreated ;
  WeightHeightState({this.isCreated,this.status, this.errorMessage, this.saveStatus, this.weightHeightList, this.weightHeightEnum});

  WeightHeightState copyWith({bool? isCreated,BlocStatus? status, BlocStatus? saveStatus, WeightHeightEnum? weightHeightEnum, List<WeightHeightResponse>? weightHeightList, String? errorMessage}) {
    return WeightHeightState(
      isCreated: isCreated??this.isCreated,
      status: status ?? this.status,
      weightHeightEnum: weightHeightEnum ?? this.weightHeightEnum,
      saveStatus: saveStatus ?? this.saveStatus,
      weightHeightList: weightHeightList ?? this.weightHeightList,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
