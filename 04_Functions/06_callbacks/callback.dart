void main() {

  // Callback is just calling a function inside a function
  getUser('100', (map) => print(map));

}

void getUser(String id, Function callback) {
  final Map<String, String> user = {
    'id'  : id,
    'name': 'Jon'
  };

  callback(user);
}