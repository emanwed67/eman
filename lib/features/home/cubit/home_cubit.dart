import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:tourism_app/features/home/cubit/ai_model.dart';
import 'package:tourism_app/features/home/one_place_model.dart';

import '../presentation/home_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitState());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);

  getAllCountry() async {
    log('ddddd');
    emit(HomeLoadingState());
    final url =
        Uri.parse('$baseUrl/api/countrys/en');
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    try {
      final response = await http.get(
        url,
        headers: headers,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        var res = json.decode(response.body);
        log(res.toString());
        log('222222222222222222222222222222222222222222222222222222222222');
        log('suces');

        emit(HomeSuccessState(HomeModel.fromJson(res)));
      } else {
        log('Failed to get use: ${response.body}');
        log('222222222222222222222222222222222222222222222222222222222222');
        log('error');
        emit(HomeErrorState(response.body));
      }
    } catch (e) {
      log('Error getting user: $e');
      log('222222222222222222222222222222222222222222222222222222222222');
      log('error');
      emit(HomeErrorState(e.toString()));
    }
  }

  getOnePlace({required int id}) async {
    log('ddddd');
    emit(PlaceLoadingState());
    final url =
        Uri.parse('$baseUrl/api/place/$id/en');
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    try {
      final response = await http.get(
        url,
        headers: headers,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        var res = json.decode(response.body);
        log(res.toString());
        log('222222222222222222222222222222222222222222222222222222222222');
        log('suces');

        emit(PlaceSuccessState(OnePlaceModel.fromJson(res)));
      } else {
        log('Failed to get use: ${response.body}');
        log('222222222222222222222222222222222222222222222222222222222222');
        log('error');
        emit(PlaceErrorState(response.body));
      }
    } catch (e) {
      log('Error getting user: $e');
      log('222222222222222222222222222222222222222222222222222222222222');
      log('error');
      emit(PlaceErrorState(e.toString()));
    }
  }

  addFave(context,{required int id}) async {
    log('ddddd');
    emit(AddLikeLoadingState());
    final url = Uri.parse('$baseUrl/apifav');
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    try {
      final response = await http.post(
        url,
        body: {'user_id': '5', 'place_id': id},
        headers: headers,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        var res = json.decode(response.body);
        log(res.toString());
        log('222222222222222222222222222222222222222222222222222222222222');
        log('suces');

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('added Successfully'),duration: Duration(seconds: 3),));
        emit(AddLikeSuccessState());

      } else {
        log('Failed to get use: ${response.body}');
        log('222222222222222222222222222222222222222222222222222222222222');
        log('error');
        emit(AddLikeErrorState());
      }
    } catch (e) {
      log('Error getting user: $e');
      log('222222222222222222222222222222222222222222222222222222222222');
      log('error');
      emit(AddLikeErrorState());
    }
  }

  deleteFav(context) async {
    log('ddddd');
    emit(DeleteLikeLoadingState());
    final url = Uri.parse('$baseUrl/apifav/5');
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    try {
      final response = await http.post(
        url,
        headers: headers,
      );
      if (response.statusCode == 200 || response.statusCode == 201|| response.statusCode == 204) {
        var res = json.decode(response.body);
        log(res.toString());
        log('222222222222222222222222222222222222222222222222222222222222');
        log('suces');

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('added Successfully'),duration: Duration(seconds: 3),));
        emit(AddLikeSuccessState());

      } else {
        log('Failed to get use: ${response.body}');
        log('222222222222222222222222222222222222222222222222222222222222');
        log('error');
        emit(AddLikeErrorState());
      }
    } catch (e) {
      log('Error getting user: $e');
      log('222222222222222222222222222222222222222222222222222222222222');
      log('error');
      emit(AddLikeErrorState());
    }
  }

  AiModel? aiModel;
  getAiFunc({required String tourism}) async {
    log('ddddd');
    emit(GetAieLoadingState());
    final url =
    Uri.parse('$baseUrl/api/places/$tourism%20tourism/en');
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    try {
      final response = await http.get(
        url,
        headers: headers,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        var res = json.decode(response.body);
        log(res.toString());
        log('222222222222222222222222222222222222222222222222222222222222');
        log('suces');
        aiModel=AiModel.fromJson(res);
        // log(aiModel.toString());
        emit(GetAiSuccessState(AiModel.fromJson(res)));
      } else {
        log('Failed to get use: ${response.body}');
        log('222222222222222222222222222222222222222222222222222222222222');
        log('error');
        emit(GetAiErrorState(response.body));
      }
    } catch (e) {
      log('Error getting user: $e');
      log('222222222222222222222222222222222222222222222222222222222222');
      log('error');
      emit(GetAiErrorState(e.toString()));
    }
  }

}


String baseUrl='https://d9ee-197-32-251-196.ngrok-free.app';