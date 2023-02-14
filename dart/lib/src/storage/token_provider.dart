class ITokenProvider {
  Future<String> get({String name = "default"}) async {
    throw UnimplementedError();
  }

  Future save(String authToken, {String name = "default"}) {
    throw UnimplementedError();
  }
}

class MemoryTokenProvider implements ITokenProvider {
  Map<String, String> tokens = <String, String>{};
  @override
  Future<String> get({String name = "default"}) async {
    var token = tokens[name];
    if (token == null) {
      throw ArgumentError("Token named=$name not found");
    }
    return Future(() => token);
  }

  @override
  Future save(String authToken, {String name = "default"}) {
    tokens[name] = authToken;
    return Future(() => null);
  }
}
