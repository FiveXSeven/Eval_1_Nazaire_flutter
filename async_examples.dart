//  Fonction asynchrone simple
Future<String> fetchData() {
  return Future.delayed(
    Duration(seconds: 2),
    () => "Données reçues",
  );
}

//  Fonction asynchrone avec async/await
Future<String> fetchDataAsync() async {
  await Future.delayed(Duration(seconds: 2));
  return "Données reçues de manière asynchrone";
}

//  Création d'un Stream périodique
Stream<int> createPeriodicStream() {
  return Stream.periodic(Duration(seconds: 1), (count) => count);
}

// Fonction principale pour tester les fonctionnalités asynchrones
Future<void> main() async {
  // Test de fetchData avec then
  print("Début du fetch avec then...");
  fetchData().then((data) => print(data));

  // Test de fetchDataAsync avec async/await
  print("\nDébut du fetch avec async/await...");
  String result = await fetchDataAsync();
  print(result);

  // Test du Stream
  print("\nDébut de l'écoute du stream...");
  var subscription = createPeriodicStream().take(5).listen(
        (data) => print("Valeur du stream: $data"),
        onDone: () => print("Stream terminé"),
      );

  // Attendre 6 secondes pour voir les résultats du stream
  await Future.delayed(Duration(seconds: 6));
  await subscription.cancel();
}
