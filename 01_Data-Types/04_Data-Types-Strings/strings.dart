void main() {

  String catName = 'Cheddar';
  print('My cat name is $catName');

  late String newCatName;
  newCatName = 'Whiskers';
  print('I \'ve addopted a new cat, his name is $newCatName');

  // Comparing single quotes vs double quotes
  const String personName = 'Alex';
  const String anotherPersonName = "Alex";

  print(personName == anotherPersonName); // true

  final String multiLineString = 
  '''
  
  Hello Github,
  This is a beginner friendly repo!
  Have fun! 😊
  
  ''';
  
  print(multiLineString);

  final String firstName = 'Alejandro';
  final String lastName = 'Perez-Vigo';

  final String fullName = '$firstName $lastName';
  print('The user fullname is $fullName');

}