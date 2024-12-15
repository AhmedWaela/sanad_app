import 'package:sanad_app/core/exports/exports.dart';

class ReminderRepo {
  Future<DateTime?> showDateDialog(BuildContext context) async {
    await showDatePicker(
      context: context,
      firstDate: DateTime(2024),
      lastDate: DateTime(2050),
      initialDate: DateTime.now(),
    );
  }
}
