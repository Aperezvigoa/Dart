void main() {

  final Map<String, dynamic> Alex = getUserInfo('Alex', 23, 1500.5, 'Flutter');
  print('Alex map: $Alex');

  // Using named arguments
  final Map<String, dynamic> Cheddar = getUserInfoNamed(stackTech: 'Firebase', age: 6, name: 'Cheddar');
  print('Cheddar Map: $Cheddar');

}
// Positional arguments
Map<String, dynamic> getUserInfo(String name, int age, double salary, String stackTech) {
  return {
    'name': name,
    'age': age,
    'salary': salary,
    'stack': stackTech
  };
}

// Named arguments
Map<String, dynamic> getUserInfoNamed(
  {
    required String name,
    required int age, 
    double? salary = 0.00,
    required String stackTech
    }) 
{
  return {
    'name': name,
    'age': age,
    'salary': salary,
    'stack': stackTech
  };
}