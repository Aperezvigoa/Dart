void main() {

  Map<String, String> person = {
    'name': 'Peter',
    'username': 'Parker'
  };

  final Map<String, String> personCap = capitalizeMap(person);
  print(personCap);
  print(person);

  // Both were capitalized, because the function gets the memory address from 'person'
  // How to avoid this? inside the function we can create a copy of the referenced map.

  Map<String, String> person2 = {
    'name': 'Clark',
    'username': 'Kent'
  };

  final Map<String, String> person2Cap = capitalizeCopyMap(person2);
  print(person2Cap);
  print(person2);
}

Map<String, String> capitalizeMap(Map<String, String> person) {
  person['name'] = person['name']?.toUpperCase() ?? 'Not name detected'; 
  return person;
}


Map<String, String> capitalizeCopyMap(Map<String, String> person) {
  final Map<String, String> copyPerson = {...person};
  copyPerson['name'] = copyPerson['name']?.toUpperCase() ?? 'Not name detected';
  return copyPerson;
}