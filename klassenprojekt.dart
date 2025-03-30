class LogIn {
  final int userID;
  final String userMail;
  final String pw;
  final bool flag;

  LogIn({
    required this.userID,
    required this.userMail,
    required this.pw,
    required this.flag,
  });
}

//die emailadresse wird später verwendet um eine email als bestätigung für die Bestellung zu schreiben
/*class Team {
  final String teamName;
  //Welche Manschaft ?
  final String logoName;

  Team(this.teamName, this.logoName);
}
wahrscheinlich brauche ich diese klasse nicht*/

class Coach {
  Map<String, String> map =
      {}; //hier erfolgt die zuordnung Mannschaft -Betreuer

  Coach({required this.map});
}

class OrderHose {
  Map<String, int> sizes = {}; //Ergänzen größe L und als Menge int angabe

  OrderHose({required this.sizes});
}

class OrderOberteil {
  Map<String, int> sizes = {};

  OrderOberteil({required this.sizes});
}

class Person {
  //ist der Besteller der Kleidung
  Adress adress;
  Coach coach; //A jugend -> Betreuername ,Bjugend Betreuername.. und so weiter
  LogIn email; //hier hole ich mir die emailadresse
  OrderHose orderHose;
  OrderOberteil orderOberteil;
  //hier Bestellung Ablegen grösse und Anzahl

  Person({
    required this.adress,
    required this.coach,
    required this.email,
    required this.orderHose,
    required this.orderOberteil,
  });
}

/*class Price{
  Order name;
  int price;
  int priceShirt;
  int pricePants;
  Price({required this.name,required this.price,required this.pricePants,required this.priceShirt});
}*/
class Adress {
  final String firstName;
  final String lastName;
  final String street;
  final String zipCity;
  final String city;

  Adress({
    required this.firstName,
    required this.lastName,
    required this.street,
    required this.zipCity,
    required this.city,
  });
}

abstract class DataBaseRepository {
  List<Person> getMessage(); //sammeln der Daten in einer Klasse Person
  void inPutMessage(Person person); //hinzufügen der Daten wie Preis/Stückzahl/
}

class MockDataBaseRepository implements DataBaseRepository {
  List<Person> collect = [];
  @override
  List<Person> getMessage() {
    return collect;
  }

  void inPutMessage(Person person) {
    collect.add(person);
  }
}

//Klassen erstellen Fake
void main() {
  Adress ad = Adress(
    firstName: "Lukas",
    lastName: "Baumann",
    street: "Mozartstraße 5",
    zipCity: "73760",
    city: "Ostfildern",
  );
  Coach aJ = Coach(map: {"Ajugend": "Klopp"});
  LogIn mail = LogIn(
    userID: 12345,
    userMail: "lukas.baumann@web.de",
    pw: "xyz",
    flag: true,
  );
  OrderHose hse = OrderHose(sizes: {"L": 2});
  OrderOberteil obTl = OrderOberteil(sizes: {"M": 2});
  Person lukasBaumann = Person(
    adress: ad,
    coach: aJ,
    email: mail,
    orderHose: hse,
    orderOberteil: obTl,
  );

  print(lukasBaumann.adress.firstName);
}
