class Strings {

  Strings._privateConstructor();

  static const appName = 'Jobs For Everyone';
  static const empty = '';
  static const mobileNumber = 'Mobile Number';
  static const getOTP = 'Get OTP';
  static const emailId = 'Email Id';
  static const password = 'Password';
  static const confirmPassword = 'Confirm Password';
  static const login = 'Log In';
  static const logout = 'Log Out';
  static const newUser = 'New User? Register';
  static const name = 'Name';
  static const skills = 'Skills';
  static const alreadyAUser = 'Already a User? Login';
  static const register = 'Register';
  static const createAJob = 'Create A Job';
  static const jobTitle = 'Job Title';
  static const jobDesc = 'Job Description';
  static const jobsLocation = 'Job Location';
  static jobLocation(String location) => 'Job Location: $location';
  static jobDescription(String desc) => 'Job Description: $desc';
  static const showPostedJobs = 'Show Posted Jobs';
  static const noJobs = 'No Jobs Posted Yet!';
}

class ErrorMessages {
  ErrorMessages._privateConstructor();

  static const unauthorized = 'You are not authorized';
  static const noInternet = 'Please check your internet connection';
  static const connectionTimeout = 'Please check your internet connection';
  static const networkGeneral = 'Something went wrong. Please try again later.';
  static const invalidPhone = 'Invalid Mobile number';
  static const invalidOTP = 'Invalid OTP';
  static const invalidName = 'Invalid Name';
  static const invalidEmail = 'Invalid Email';
  static const emptySkills = "Skills can't be empty!";
  static const invalidPassword = "Invalid Password";
  static const thisFieldCantBeEmpty = "This Field Can't be empty!";
  static const invalidConfirmPassword = "Invalid Confirm Password";
  static const passwordsDontMatch = "Confirm Password is not same as the Password";
}
