//  Classe Personne
class Personne {
  String _nom;
  int _age;

  // Constructeur
  Personne(this._nom, this._age);

  //  Getters et Setters
  String get nom => _nom;
  set nom(String value) => _nom = value;

  int get age => _age;
  set age(int value) {
    if (value >= 0) {
      _age = value;
    } else {
      throw Exception("L'âge ne peut pas être négatif");
    }
  }

  @override
  String toString() => 'Personne(nom: $_nom, age: $_age)';
}

// Classe Etudiant héritant de Personne
class Etudiant extends Personne {
  String _classe;

  // Constructeur
  Etudiant(String nom, int age, this._classe) : super(nom, age);

  // Getter et Setter pour classe
  String get classe => _classe;
  set classe(String value) => _classe = value;

  @override
  String toString() => 'Etudiant(nom: $nom, age: $age, classe: $_classe)';
}

void main() {
  // Création d'une personne
  Personne personne = Personne("Nazaire", 25);
  print("Personne créée : ${personne.toString()}");

  // Modification des attributs
  personne.nom = "Nazaire Sagna";
  personne.age = 26;
  print("Personne modifiée : $personne");

  // Création d'un étudiant
  Etudiant etudiant = Etudiant("Salomon", 23, "DFE4");
  print("\nEtudiant créé : $etudiant");

  // Modification des attributs de l'étudiant
  etudiant.classe = "DFE5";
  print("Etudiant après changement de classe : $etudiant");

  // Test de l'exception pour un âge négatif
  try {
    etudiant.age = -5;
  } catch (e) {
    print("\nErreur : $e");
  }
}
