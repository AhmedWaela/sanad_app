// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanad_app/core/exports/exports.dart';

class ReminderCubit extends Cubit<ReminderStates> {
  ReminderCubit() : super(ReminderInitialState());

  Future<DateTime?> showDateDialog(BuildContext context) async {
    var date = await showDatePicker(
      context: context,
      firstDate: DateTime(2024),
      lastDate: DateTime(2050),
      initialDate: DateTime.now(),
    );
    emit(DatePicked(date: date ?? DateTime.now()));
  }
}

class ReminderStates {}

class ReminderInitialState extends ReminderStates {}

class DatePicked extends ReminderStates {
  final DateTime date;

  DatePicked({required this.date});
}
