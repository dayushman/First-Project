import 'package:starter/app/data/models/dto/job.dart';
import 'package:starter/app/data/models/dto/response.dart';
import 'package:starter/app/data/models/dto/user.dart';
import 'package:starter/app/data/models/request/auth_request.dart';
import 'package:starter/app/data/models/response/create_job_response.dart';
import 'package:starter/app/data/models/response/get_applied_candidate_response.dart';
import 'package:starter/app/data/models/response/posted_job_response.dart';
import 'package:starter/app/data/models/response/sign_up_response.dart';
import 'package:starter/app/data/network/network_requester.dart';
import 'package:starter/app/data/values/urls.dart';
import 'package:starter/utils/helper/exception_handler.dart';

class UserRepository {
  Future<RepoResponse<SignUpResponse>> login(
      {required String email, required String password}) async {
    Map<String, String> map = {};
    map['email'] = email;
    map['password'] = password;
    var response =
        await NetworkRequester.shared.post(path: URLs.login, data: map);

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: SignUpResponse.fromJson(response));
  }

  Future<RepoResponse<SignUpResponse>> signUp(SignUpRequest data) async {
    var response = await NetworkRequester.shared
        .post(path: URLs.signUp, data: data.toJson());

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: SignUpResponse.fromJson(response));
  }

  Future<RepoResponse<PostedJobResponse>> getAllPostedJobs(
      {required UserData userData}) async {
    var response =
        await NetworkRequester.authenticated.get(path: URLs.getAllPostedJobs);

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: PostedJobResponse.fromJson(response));
  }

  Future<RepoResponse<CreateJobResponse>> createAJob(
      {required String location,
      required String title,
      required String description}) async {
    final map = <String, String>{};
    map['location'] = location;
    map['title'] = title;
    map['description'] = description;
    var response = await NetworkRequester.authenticated
        .post(path: URLs.postJob, data: map);

    return response is APIException
        ? RepoResponse(error: response)
        : RepoResponse(data: CreateJobResponse.fromJson(response));
  }

  Future<RepoResponse<GetAppliedCandidateResponse>> getAllCandidate(
      {required String jobId}) async {
    var response = await NetworkRequester.authenticated
        .get(path: URLs.getCandidates(jobId));

    return response is APIException
        ? RepoResponse(error: response)
    : RepoResponse(data: GetAppliedCandidateResponse.fromJson(response));
  }
}
