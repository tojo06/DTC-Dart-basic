void main() {
  print('Exercices semaine 01 DTC flutter Dart : ');
  print("");

  // 1 : var et Affichage
  print("Exo O1: Var et affichage");
  print("");
  String nom = 'Tojo';
  print('je m appelle $nom');
  print("");

  //2 : calcul
  print("Exo 02: equation basique");
  print("");

  int a = 20;
  int b = 55;
  print('Addition : $a + $b = ${a + b}');
  print('Soustaction : $a - $b = ${a - b}');
  print('Multiplication : $a * $b = ${a * b}');
  print('Division : $a / $b = ${a / b}');
  print("");

  //3: list
  print("Exo 03: Fruits Market");
  print("");

  List<String> fruitsbasket = [
    'Kiwi',
    'Fraise',
    'Raisin',
    'Apple',
    'Banana',
    'Concomber',
    'Durian',
    'Orange'
  ];
  fruitsbasket.forEach(print);
  print("");
  fruitsbasket.add('Tomatoes');
  fruitsbasket.forEach(print);
  print("");

  //4: objet et dictionnaire
  print("Exo 04: creation d'objet et dictionnaire ");
  print("");

  Map<String, int> detail = {
    'striker': 105,
    'duel': 103,
    'blitz': 207,
    'aegis': 303,
    'buster': 102
  };
  print('Dictionnaire de base:');
  detail.forEach(
    (nom, age) {
      print('nom: $nom, age: $age');
    },
  );
  print('');
  detail.addAll(
    {'calamity': 131, 'raider': 370, "foridden": 252, 'Strike dagger': 01},
  );
  print('Dictionnaire actualisé:');
  detail.forEach(
    (nom, age) {
      print('nom: $nom, age: $age');
    },
  );
  print('');

  //5: conversion String to int et inverse
  print("Exo 05: conversion ");
  print("");

  int number = 370;
  String text = '706';

  String conversion01 = number.toString();
  print('conversion d un nombre vers une chaine de caractère: $conversion01');

  int conversion02 = int.parse(text);
  print('conversion d une chaine de caractère vers un nombre : $conversion02');
  print('');

  //6-1: Modulo
  print("Exo 06-1: Pair ou impair ");
  print("");
  int guess = 1586;

  String result = (guess % 2 == 0) ? 'pair' : 'impair';

  print('$guess est un nombre $result.');
  print("");

  //6-2: recherche
  print("Exo 06-2: recherche dans une list ");
  print("");
  print('la liste des fruits avec la lettre a dans la liste FruitsBasket:');
  fruitsbasket.forEach(
    (element) {
      if (element.contains('a')) {
        print('  $element');
      }
    },
  );
  print("");

  //7: interaction avec utilisateur
  print("Exo 07: interaction utilisateur et registre");
  print("");

  String? rechercher = "duel";
  bool trouver = false;

  for (String key in detail.keys) {
    if (key == rechercher) {
      print('le nom $rechercher est sous indicatif ${detail[rechercher]}');
      trouver = true;
      break;
    }
  }
  ;

  if (!trouver) {
    print('Le nom $rechercher n\'est pas trouvé.');
  }
  print("");

  // 8: nombre premier a la chaine
  print("Exo 08: verification de liste numerique ");
  print("");

  List<int> nombres = [
    2,
    3,
    5,
    7,
    11,
    13,
    17,
    19,
    23,
    29,
    30,
    50,
    97,
    100,
    102,
    103,
    105,
    131,
    207,
    252,
    303,
    370
  ];
  for (int nombre in nombres) {
    print('$nombre est premier : ${estPremier(nombre)}');
  }

  print("");

  // 9:triage
  print("Exo 09: triage de list ");
  print("");
  fruitsbasket.sort();
  fruitsbasket.sort();
  print('Liste des fruits triée par ordre alphabétique :');
  for (String fruit in fruitsbasket) {
    print(fruit);
  }

  print("");
//10 : remove
  print("Exo 10: Remove someone ");
  print("");
  String lost = detail.keys.elementAt(6);
  detail.remove(lost);

  print('Dictionnaire actualisé after losing $lost:');
  detail.forEach(
    (nom, age) {
      print('nom: $nom, age: $age');
    },
  );
  print('');

  //11 : longueur de caractere de list
  print("Exo 11: list ang lenght ");
  print("");

  List<Map<String, dynamic>> fruitsAvecLongueur = fruitsbasket.map((fruit) {
    return {'fruit': fruit, 'longueur': fruit.length};
  }).toList();

  print('Nom du fruit : Longueur');
  for (var fruit in fruitsAvecLongueur) {
    print('${fruit['fruit']} : ${fruit['longueur']}');
  }

  print("");
}

//fonction nombre premier
bool estPremier(int nombre) {
  if (nombre <= 1) {
    return false;
  }
  for (int i = 2; i * i <= nombre; i++) {
    if (nombre % i == 0) {
      return false;
    }
  }
  return true;
}
