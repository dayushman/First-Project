/// title : "BPO"
/// description : "job description"
/// location : "Varanasi"
/// createdAt : "2021-10-25T06:50:54.000Z"
/// updatedAt : "2021-10-25T06:50:54.000Z"
/// id : "3562fde0-f892-44fb-aacf-4587075c50cf"

class Job {
  Job({
      required this.title,
      required this.description,
      required this.location,
      required this.createdAt,
      required this.updatedAt,
      required this.id,});

  Job.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    location = json['location'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
  }
  late String title;
  late String description;
  late String location;
  late String createdAt;
  late String updatedAt;
  late String id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    map['location'] = location;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['id'] = id;
    return map;
  }

}