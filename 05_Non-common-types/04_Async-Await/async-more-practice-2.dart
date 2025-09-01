void main() {

  print('Searching user data...');
  showUser(5);
  print('This line will be executed after de search');

  obtainAllPosts();

  loadAllData();
}

// Exercise 1

Future<String> obtainUserData(int id) {
  return Future.delayed(
    Duration(seconds: 3),
    () => 'User $id: Jon Doe'
  );
}

void showUser(int id) async {

  final String user = await obtainUserData(id);
  print(user);

}

// Exercise 2

Future<String> obtainPost(int id) async {

  return Future.delayed(
    Duration(seconds: 1),
    () => 'Post $id: Interesting Post'
  );
}

void obtainAllPosts() async {

  for (int i = 1; i <= 3; i++) {
    String post = await obtainPost(i);
    print(post);
  }

}

// Exercise 3

Future<String> obtainProfile() {
  return Future.delayed(
    Duration(seconds: 1),
    () => 'Profile: Flutter Dev'
  );
}

Future<String> obtainCats() {
  return Future.delayed(
    Duration(seconds: 2),
    () => 'Cheddar, Bigotitos y Lily'
  );
}

void loadAllData() async {

  print('Loading profile...');
  final String profile = await obtainProfile();

  print('Loading cats...');
  final String cats = await obtainCats();

  print(profile);
  print(cats);
}