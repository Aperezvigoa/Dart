void main() {

  final List<String> OS = ['macOS', 'Windows', 'GNU Linunx'];

  // For
  print('Using for loop:');
  for (int i = 0; i < OS.length; i++) {
    print('item ${i+1}: ${OS[i]}');
  }

  // For in
  print('Using for in loop:');
  for(String item in OS) {
    print(item);
  } 
}