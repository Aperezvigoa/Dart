import 'service.dart';

void main() {

  final Service spotifyService = new Service();
  spotifyService.url = 'https://api.spotify.com/';

  final Service youtubeService = new Service();
  youtubeService.url = 'https://api.youtube.com/';

  print( spotifyService == youtubeService ); // TRUE
  // Because Singleton, this is the SAME instance

  print(spotifyService.url); // https://api.youtube.com/
  print(youtubeService.url); // https://api.youtube.com/
}