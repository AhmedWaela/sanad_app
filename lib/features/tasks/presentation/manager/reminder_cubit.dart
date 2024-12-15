import 'package:flutter_bloc/flutter_bloc.dart';

class ReminderCubit extends Cubit<ReminderStates> {
  ReminderCubit() : super(ReminderInitialState());
}

class ReminderStates {}

class ReminderInitialState extends ReminderStates {}
