void main() {

  final Map<String, dynamic> superman = {

    'realname': 'Clark Kent',
    'heroname': 'Superman',
    'nativefrom': 'Krypton',
    'powers': ['Fly', 'Eye Laser', 'Super strength']
  };

  print('Superman Map: $superman');
  print('Superman realname: ${ superman['realname'] }');
  print('Superman is from: ${ superman['nativefrom'] }');
  print('One Superman power: ${ superman['powers'][1] }');

  // Declaring an empty map
  final Map<String, dynamic> captain = new Map();

  // Adding keys to the map
  captain['name'] = 'Mr Jones';
  captain['age'] = 236;
  captain['isAlive'] = true;

  print('Captain Map: $captain');

  captain.addAll(
    {
      'super-power': 'inmortal',
      'money': 999_999_999.99
    }
  );

  print('Updated Captain Map: $captain');
}