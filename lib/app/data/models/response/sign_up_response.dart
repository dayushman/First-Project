import 'package:starter/app/data/models/dto/user.dart';

/// data : {"id":"d53b92ac-a8ba-4c6e-98d7-15a2dbe6bc40","email":"sharadRfjbfkdjbf@gmail.com","userRole":0,"name":"sharadR","skills":"HTML, CSS, JS","updatedAt":"2021-10-22T19:30:25.267Z","createdAt":"2021-10-22T19:30:25.267Z","token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImQ1M2I5MmFjLWE4YmEtNGM2ZS05OGQ3LTE1YTJkYmU2YmM0MCIsImVtYWlsIjoic2hhcmFkUmZqYmZrZGpiZkBnbWFpbC5jb20iLCJ1c2VyUm9sZSI6MCwibmFtZSI6InNoYXJhZFIiLCJza2lsbHMiOiJIVE1MLCBDU1MsIEpTIiwidXBkYXRlZEF0IjoiMjAyMS0xMC0yMlQxOTozMDoyNS4yNjdaIiwiY3JlYXRlZEF0IjoiMjAyMS0xMC0yMlQxOTozMDoyNS4yNjdaIiwiaWF0IjoxNjM0OTMxMDI1fQ.HoHo3qJphLGCgt_RYgYCWg8W9IVcIoaLnx7vNM-9Bwk"}
/// code : 201
/// success : true

class SignUpResponse {
  SignUpResponse({
      required this.data,
      required this.code,
      required this.success,});

  SignUpResponse.fromJson(dynamic json) {
    data = (json['data'] != null ? UserData.fromJson(json['data']) : null)!;
    code = json['code'];
    success = json['success'];
  }
  late UserData data;
  late int code;
  late bool success;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['data'] = data.toJson();
    map['code'] = code;
    map['success'] = success;
    return map;
  }

}

