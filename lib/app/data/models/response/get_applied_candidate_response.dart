class GetAppliedCandidateResponse {
  late List<Candidate> _candidateData;
  late int _code;
  late bool _success;

  GetAppliedCandidateResponse({required List<Candidate> data, required int code, required bool success}) {
    this._candidateData = data;
    this._code = code;
    this._success = success;
  }


  GetAppliedCandidateResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      _candidateData = <Candidate>[];
      json['data'].forEach((v) {
        _candidateData.add(new Candidate.fromJson(v));
      });
    }
    _code = json['code'];
    _success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this._candidateData.map((v) => v.toJson()).toList();
    data['code'] = this._code;
    data['success'] = this._success;
    return data;
  }
}

class Candidate {
  late String _email;
  late String _name;
  late String _skills;
  late String _id;

  Candidate({required String email, required String name, required String skills, required String id}) {
    this._email = email;
    this._name = name;
    this._skills = skills;
    this._id = id;
  }


  Candidate.fromJson(Map<String, dynamic> json) {
    _email = json['email'];
    _name = json['name'];
    _skills = json['skills'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this._email;
    data['name'] = this._name;
    data['skills'] = this._skills;
    data['id'] = this._id;
    return data;
  }
}

