import 'Member.dart';


class Activity {
      final String title;
      final String? description;
      final DateTime? dateRelease;
      final DateTime reminderDate; // data de lembrete
      // Member owner;
      final String owner;
      final bool isComplete;

      const Activity(this.title, this.description, this.dateRelease, this.reminderDate, this.owner, this.isComplete);
}