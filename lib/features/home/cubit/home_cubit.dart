import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edugate/features/home/models/university_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<UniversityModel> universities = [];
  List<UniversityModel> allUniversities = [];

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void getUniversities() async {
    // if (universities.isNotEmpty) {
    //   return;
    // }
    emit(LoadingHomeState());
    try {
      var data = await firestore.collection("universities").get();
      allUniversities =
          data.docs.map((e) {
            var university = e.data();
            university["id"] = e.id;

            return UniversityModel.fromJson(university);
          }).toList();
      universities = allUniversities;
      // emit(SuccessHomeState());

      getSliders();
    } catch (error) {
      emit(ErrorHomeState());
    }
  }

  void search(String query) {
    if (query.isEmpty) {
      universities = allUniversities;
    } else {
      universities =
          allUniversities
              .where(
                (item) => item.name.toString().toLowerCase().contains(
                  query.toLowerCase(),
                ),
              )
              .toList();
    }
    emit(SuccessHomeState());
  }

  List<Map<String, dynamic>> sliders = [];
  void getSliders() async {
    if (sliders.isNotEmpty) {
      return;
    }
    emit(LoadingHomeState());
    try {
      var data = await firestore.collection("slider").get();
      sliders = data.docs.map((e) => e.data()).toList();
      emit(SuccessHomeState());
    } catch (error) {
      emit(ErrorHomeState());
    }
  }
}
