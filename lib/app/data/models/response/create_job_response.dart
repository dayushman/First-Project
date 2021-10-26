import 'package:starter/app/data/models/dto/job.dart';

class CreateJobResponse {
  late Job _data;
  late int _code;
  late bool _success;

  CreateJobResponse({required Job data, required int code, required bool success}) {
    this._data = data;
    this._code = code;
    this._success = success;
  }

  CreateJobResponse.fromJson(Map<String, dynamic> json) {
    _data = (json['data'] != null ? new Job.fromJson(json['data']) : null)!;
    _code = json['code'];
    _success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this._data.toJson();
    data['code'] = this._code;
    data['success'] = this._success;
    return data;
  }
}