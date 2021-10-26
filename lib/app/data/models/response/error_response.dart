class ErrorResponse {
  late final String message;
  late final Map<String, String> errors;

  ErrorResponse({required this.message});

  ErrorResponse.fromJson(Map<String, dynamic>? json) {
    message = json?['message'] ?? '';
    errors = {};
    json?["errors"]?.forEach((element) {
      element.forEach((k,v)=>errors[k] = v);
    });
  }
}