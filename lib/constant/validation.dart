const String emptyEmail = 'Please enter your email';
const String unvalidEmail = 'Enter valid email';
const String emptyPwd = 'Please enter your password';
const String weakPwd = 'Weak password';
const String emptyRePwd = 'Please re-enter your password';
const String misMatched = "Password doesn't match";

// RegExp emailRegex = RegExp(
//     r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$");
RegExp nameRegex = RegExp(r"^[a-z A-Z]+$");
RegExp phoneNumberRegex = RegExp(r"^0[0-9]{9}$");
