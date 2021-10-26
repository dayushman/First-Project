class SendOTPRequest {
  late String phone;

  SendOTPRequest({required this.phone});

  SendOTPRequest.fromJson(Map<String, dynamic> json) {
    this.phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['phone'] = this.phone;
    return data;
  }
}

class VerifyOTPRequest {
  late String phone;
  late String otp;

  VerifyOTPRequest({required this.phone, required this.otp});

  VerifyOTPRequest.fromJson(Map<String, dynamic> json) {
    this.phone = json['phone'];
    this.otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['phone'] = this.phone;
    data['otp'] = this.otp;
    return data;
  }
}

/// email : "sharadR@gmail.com"
/// userRole : 0
/// password : "sharadR"
/// confirmPassword : "sharadR"
/// name : "sharadR"
/// skills : "HTML, CSS, JS"

class SignUpRequest {
  SignUpRequest({
    required this.email,
    required this.userRole,
    required this.password,
    required this.confirmPassword,
    required this.name,
    required this.skills,});

  SignUpRequest.fromJson(dynamic json) {
    email = json['email'];
    userRole = json['userRole'];
    password = json['password'];
    confirmPassword = json['confirmPassword'];
    name = json['name'];
    skills = json['skills'];
  }
  late String email;
  late int userRole;
  late String password;
  late String confirmPassword;
  late String name;
  late String skills;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['userRole'] = userRole;
    map['password'] = password;
    map['confirmPassword'] = confirmPassword;
    map['name'] = name;
    map['skills'] = skills;
    return map;
  }

}
