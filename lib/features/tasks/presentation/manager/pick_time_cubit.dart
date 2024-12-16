import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PickTimeCubit extends Cubit<PickTimeStates> {
  PickTimeCubit() : super(PickTimeStates(time: TimeOfDay.now()));

  void pickTime(TimeOfDay time) {
    emit(TimePicked(time: time));
  }
}

class PickTimeStates {
  TimeOfDay time;
  PickTimeStates({required this.time});
}

class TimePicked extends PickTimeStates {
  TimePicked({required super.time});
}
