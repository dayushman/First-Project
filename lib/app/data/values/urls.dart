class URLs {
  URLs._privateConstructor();


  //User APIs
  static const signUp = "/auth/register";
  static const login = "/auth/login";
  static const getAllPostedJobs = "/recruiters/jobs";
  static const postJob = "/jobs/";
  static getCandidates(String jobId) => "/recruiters/jobs/$jobId/candidates";
}
