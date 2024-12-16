import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanad_app/core/exports/exports.dart';

class AddReminderCubit extends Cubit<AddReminderStates> {
  AddReminderCubit() : super(AddReminderStates());

  addReminder() {
    if (state.title.text.isNotEmpty) {}
  }
}

class AddReminderStates {
  final TextEditingController title = TextEditingController();
  final TextEditingController description = TextEditingController();
  AddReminderStates();
}

class ReminderAdded extends AddReminderStates {
  ReminderAdded();
}
