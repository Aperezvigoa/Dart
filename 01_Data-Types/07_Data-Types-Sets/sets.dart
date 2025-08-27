void main() {

  // Lets create a list
  final List<String> heroes = ['Superman', 'Superman', 'Spiderman', 'Batman', 'Spiderman', 'Green Lantern', 'Batman'];

  print('Heroes list: $heroes');

  final Set<String> heroesSet = heroes.toSet();
  print('Heroes Set: $heroesSet');

  final Set<int> uniqueNumbers = {1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6};
  print('Unique numbers: $uniqueNumbers');

  // Adding content to the set (same method in List)
  uniqueNumbers.add(16);
  print('New unique numbers set: $uniqueNumbers');
  
  // Lets do it again
  uniqueNumbers.add(16);
  print('New unique numbers set: $uniqueNumbers');

  print('${ uniqueNumbers.toList() }');

}