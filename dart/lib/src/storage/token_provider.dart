class ITokenProvider {
  Future<String> Get({String name = "default"}) {
    throw UnimplementedError;
  }

  void Save(String authToken, {String name = "default"}) {
    throw UnimplementedError;
  }
}
