import 'Member.dart';


class Activity {
       String title;
       String? description;
       DateTime? dateRelease;
       DateTime reminderDate; // data de lembrete
      // Member owner;
       String owner;
       bool isFavorite;

       Activity(this.title, this.description, this.dateRelease, this.reminderDate, this.owner, this.isFavorite);
}