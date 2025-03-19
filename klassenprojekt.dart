class LogIn {
  final String userMail;
  final String pw;
  final bool flag;

  LogIn(this.userMail, this.pw, this.flag);
}
//die emailadresse wird später verwendet um eine email als bestätigung für die Bestellung zu schreiben

class Person {
  //ist der Besteller der Kleidung
  final String team; //Welche Manschaft ?
  final String firstName;
  final String lastName;
  final String street;
  final String zipCity;
  final String city;
  final int quantity; //Stückzahl der kleidungstücke
  final int size;

  Person(this.team, this.firstName, this.lastName, this.street, this.zipCity,
      this.city, this.quantity, this.size);
}

class Button {
  final String label; //Text der buttons
  final int length;
  final int width;
  final String color;
  //evtl auch Schriftart? ToDo und Größe

  Button(this.label, this.color, {required this.length, required this.width});
}
