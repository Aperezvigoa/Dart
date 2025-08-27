void main() {

  final List<int> scores = [5, 6, 5, 10, 7, 7, 8];

  print('The class scores is: $scores');
  print('Scores first element: ${ scores[0] }');
  print('Scores last element: ${ scores[scores.length - 1] }');

  print('Scores first element: ${ scores.first }');
  print('Scores last element: ${ scores.last }');

  print('Scores reversed: ${ scores.reversed }');

}