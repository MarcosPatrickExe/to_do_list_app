import 'Member.dart';


// classe de modelo que sera usada na lista
class Activity {
       String title;
       String? description;
       DateTime? dateRelease;
       DateTime reminderDate; // data de lembrete
      // Member owner;
       String owner; // o nome do criador (ou owner) ja vai ser definido automaticamente atraves do login do usuario
       bool isFavorite;

       Activity(this.title, this.description, this.dateRelease, this.reminderDate, this.owner, this.isFavorite);
}
