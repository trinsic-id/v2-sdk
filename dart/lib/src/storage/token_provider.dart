class ITokenProvider {
  Future<String> Get({String name = "default"}) async {
    throw UnimplementedError();
  }

  Future Save(String authToken, {String name = "default"}) {
    throw UnimplementedError();
  }
}

class MemoryTokenProvider implements ITokenProvider {
  Map<String, String> tokens = <String, String>{};
  @override
  Future<String> Get({String name = "default"}) async {
    var token = tokens[name];
    if (token == null) {
      throw ArgumentError("Token named=$name not found");
    }
    return Future(() => token);
  }

  @override
  Future Save(String authToken, {String name = "default"}) {
    tokens[name] = authToken;
    return Future(() => null);
  }
}
