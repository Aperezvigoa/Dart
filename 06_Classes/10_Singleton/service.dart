class Service {

  String url = 'https://abc';
  String key = 'ABC123';
  static final Service _singleton = new Service._internal();

  factory Service() {
    return _singleton;
  }

  // Creating a private builder
  Service._internal();
}