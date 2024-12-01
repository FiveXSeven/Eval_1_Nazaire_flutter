// Import du module calculs.dart
import 'calculs.dart';

void main() {
  // Déclaration de Variables
  String nom = "Nazaire";
  int age = 25;

  // Types de Variables
  double pi = 3.14;
  bool isFlutterAwesome = true;

  //  Variables Finales et Constantes
  final String nomComplet = "Nazaire Salomon Sagna";
  const int vitesseLumiere = 299792458;

  //  Utilisation des Listes
  List<int> nombres = [1, 2, 3, 4, 5];
  nombres.add(6);

  //  Utilisation des Maps
  Map<String, dynamic> etudiant = {
    'nom': 'Nazaire',
    'age': 23,
    'classe': 'DFE4'
  };
  etudiant['note'] = 85;

  //  Appel de la fonction bonjour
  bonjour(nom);

  //  Test de la fonction addition
  int resultat = addition(5, 7);
  print("5 + 7 = $resultat");

  //  Test des conditions
  verifierNombre(10);
  verifierNombre(-5);
  verifierNombre(0);

  //  Boucles
  print("\nBoucle for de 1 à 10:");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print("\nBoucle while de 10 à 1:");
  int compteur = 10;
  while (compteur >= 1) {
    print(compteur);
    compteur--;
  }

  //  Test de la division
  try {
    print("\nDivision 10/2 = ${division(10, 2)}");
    print("Division 10/0 = ${division(10, 0)}");
  } catch (e) {
    print("Erreur: $e");
  }

  //  Test du filtrage de liste
  List<int> listeNombres = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> nombresPairs = filtrerPairs(listeNombres);
  print("\nNombres pairs: $nombresPairs");

  // Test de la fonction factorielle
  int n = 5;
  int resultatFactorielle = factorielle(n);
  print("\nFactorielle de $n = $resultatFactorielle");

  // Test de la fonction carre du module calculs.dart
  int nombre = 7;
  int resultatCarre = carre(nombre);
  print("\nLe carré de $nombre est : $resultatCarre");
}

//  Définition de la fonction bonjour
void bonjour(String nom) {
  print("Bonjour, $nom!");
}

//  Fonction addition
int addition(int a, int b) {
  return a + b;
}

//  Fonction de vérification de nombre
void verifierNombre(int nombre) {
  if (nombre > 0) {
    print("$nombre est positif");
  } else if (nombre < 0) {
    print("$nombre est négatif");
  } else {
    print("Le nombre est zéro");
  }
}

// Fonction division avec gestion d'exception
double division(int a, int b) {
  if (b == 0) {
    throw Exception("Division par zéro impossible!");
  }
  return a / b;
}

//  Fonction factorielle récursive
int factorielle(int n) {
  if (n <= 1) return 1;
  return n * factorielle(n - 1);
}

// Fonction de filtrage des nombres pairs
List<int> filtrerPairs(List<int> nombres) {
  return nombres.where((nombre) => nombre % 2 == 0).toList();
}
