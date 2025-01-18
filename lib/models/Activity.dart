import 'Member.dart';  
// import basico do Member  
     
  
// classe de modelo para o armazenamento das atividades que serao usadas na lista  
class Activity { 
       String title;  
       String? description; // dado opcional, podendo receber valor nulo
       DateTime? dateRelease; // dado-horario opcional, podendo receber valor nulo/opcional. Referente ao valor de criaçao do lembrete
       DateTime reminderDate; // data-horario de lembrete. Esse ja nao eh opcional, eh obrigatorio
      // Member owner;
       String owner; // o nome do criador (ou owner) ja vai ser definido automaticamente atraves do login do usuario
       bool isFavorite; // 'bool' é o único tipo primitivo

       Activity(this.title, this.description, this.dateRelease, this.reminderDate, this.owner, this.isFavorite);
       // construtor basico sem argumentos nomeados e posicionais
}
 
