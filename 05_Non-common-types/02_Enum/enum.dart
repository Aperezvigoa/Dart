void main() {

  Volume state = Volume.mid;

  switch(state) {

    case Volume.low:
      print('The volume is low');
      break;
    case Volume.mid:
      print('The volume is mid');
      break;
    case Volume.high:
      print('The volume is high');
      break;
  }

}

enum Volume {
  low,
  mid,
  high
}