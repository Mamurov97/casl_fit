part of 'weight_height_bloc.dart';

enum WeightHeightEnum { weight, height }

class WeightHeightEvent {}

class GetWeightHeightEvent extends WeightHeightEvent {
  final WeightHeightEnum? weightHeightEnum;

  GetWeightHeightEvent({required this.weightHeightEnum});
}

class SetWeightHeightEvent extends WeightHeightEvent {
  final WeightHeightEnum? weightHeightEnum;
  final String weightHeight;

  SetWeightHeightEvent({required this.weightHeight, required this.weightHeightEnum});
}

class WeightHeightEnumEvent extends WeightHeightEvent {
  final WeightHeightEnum? weightHeightEnum;

  WeightHeightEnumEvent({this.weightHeightEnum});
}
/*
class GetHeightEvent extends WeightHeightEvent {}

class SetHeightEvent extends WeightHeightEvent {
  final int height;

  SetHeightEvent({required this.height});
}*/
