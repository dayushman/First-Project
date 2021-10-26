import 'package:starter/app/data/models/dto/job.dart';

class PostedJobResponse {
  late JobData data;
  late int code;
  late bool success;

  PostedJobResponse({required this.data, required this.code, required this.success});

  PostedJobResponse.fromJson(Map<String, dynamic> json) {
    data = (json['data'] != null ? new JobData.fromJson(json['data']) : null)!;
    code = json['code'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.data.toJson();
    data['code'] = this.code;
    data['success'] = this.success;
    return data;
  }
}

class JobData {
  late List<Job> jobs;
  late Metadata metadata;

  JobData({required this.jobs, required this.metadata});

  JobData.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      jobs = <Job>[];
      json['data'].forEach((v) {
        jobs.add(new Job.fromJson(v));
      });
    }
    metadata = (json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this.jobs.map((v) => v.toJson()).toList();
    data['metadata'] = this.metadata.toJson();
    return data;
  }
}


class Metadata {
  late int count;
  late int limit;

  Metadata({required this.count, required this.limit});

  Metadata.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['limit'] = this.limit;
    return data;
  }
}

