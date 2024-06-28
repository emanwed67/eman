import 'package:tourism_app/features/home/presentation/home_model.dart';

import '../one_place_model.dart';
import 'ai_model.dart';

abstract class HomeState {}

class HomeInitState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  final HomeModel homeModel;

  HomeSuccessState(this.homeModel);
}

class HomeErrorState extends HomeState {
  final String error;

  HomeErrorState(this.error);
}

class PlaceLoadingState extends HomeState {}

class PlaceSuccessState extends HomeState {
  final OnePlaceModel place;

  PlaceSuccessState(this.place);
}

class PlaceErrorState extends HomeState {
  final String error;

  PlaceErrorState(this.error);
}

class AddLikeLoadingState extends HomeState {}

class AddLikeSuccessState extends HomeState {}

class AddLikeErrorState extends HomeState {}

class DeleteLikeLoadingState extends HomeState {}

class DeleteLikeSuccessState extends HomeState {}

class DeleteLikeErrorState extends HomeState {}

class  GetLikeLoadingState extends HomeState {}

class GetLikeSuccessState extends HomeState {}

class GetLikeErrorState extends HomeState {}

class  GetAieLoadingState extends HomeState {}

class GetAiSuccessState extends HomeState {
  final AiModel aiModel;

  GetAiSuccessState(this.aiModel);
}

class GetAiErrorState extends HomeState {
  final String error;

  GetAiErrorState(this.error);
}
