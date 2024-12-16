// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart' hide showDatePicker;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/custom_date_picker.dart';

class PickDateCubit extends Cubit<PickDateCubitStates> {
  PickDateCubit() : super(PickDateCubitStates(date: null));

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

class PickDateCubitStates {
  final DateTime? date;

  PickDateCubitStates({required this.date});
}

class DatePicked extends PickDateCubitStates {
  DatePicked({required super.date});
}
