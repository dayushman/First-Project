/// id : "d53b92ac-a8ba-4c6e-98d7-15a2dbe6bc40"
/// email : "sharadRfjbfkdjbf@gmail.com"
/// userRole : 0
/// name : "sharadR"
/// skills : "HTML, CSS, JS"
/// updatedAt : "2021-10-22T19:30:25.267Z"
/// createdAt : "2021-10-22T19:30:25.267Z"
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImQ1M2I5MmFjLWE4YmEtNGM2ZS05OGQ3LTE1YTJkYmU2YmM0MCIsImVtYWlsIjoic2hhcmFkUmZqYmZrZGpiZkBnbWFpbC5jb20iLCJ1c2VyUm9sZSI6MCwibmFtZSI6InNoYXJhZFIiLCJza2lsbHMiOiJIVE1MLCBDU1MsIEpTIiwidXBkYXRlZEF0IjoiMjAyMS0xMC0yMlQxOTozMDoyNS4yNjdaIiwiY3JlYXRlZEF0IjoiMjAyMS0xMC0yMlQxOTozMDoyNS4yNjdaIiwiaWF0IjoxNjM0OTMxMDI1fQ.HoHo3qJphLGCgt_RYgYCWg8W9IVcIoaLnx7vNM-9Bwk"

class UserData {
  UserData({
    required this.id,
    required this.email,
    required this.userRole,
    required this.name,
    required this.skills,
    required this.updatedAt,
    required this.createdAt,
    required this.token,});

  UserData.fromJson(dynamic json) {
    id = json['id'];
    email = json['email'];
    userRole = json['userRole'];
    name = json['name'];
    skills = json['skills'];
    updatedAt = json['updatedAt'];
    createdAt = json['createdAt'];
    token = json['token'];
  }
  late String id;
  late String email;
  late int userRole;
  late String name;
  late String skills;
  late String updatedAt;
  late String createdAt;
  late String token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['email'] = email;
    map['userRole'] = userRole;
    map['name'] = name;
    map['skills'] = skills;
    map['updatedAt'] = updatedAt;
    map['createdAt'] = createdAt;
    map['token'] = token;
    return map;
  }

}