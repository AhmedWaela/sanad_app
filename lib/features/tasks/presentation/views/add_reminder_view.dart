import 'package:sanad_app/core/exports/exports.dart';

class AddReminderView extends StatelessWidget {
  const AddReminderView({super.key});
  static const String route = '/addreminderview';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Add Reminder',
      ),
      body: AddReminderViewBody(),
    );
  }
}
