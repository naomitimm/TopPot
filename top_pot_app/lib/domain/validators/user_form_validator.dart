class UserFormValidator {
  static String? validateName(String? name) {
    if (RegExp("[0-9]").hasMatch(name!)) {
      return "Numbers are not permitted in a user name";
    }
    if (name.trim().isEmpty) {
      return "User name field can not be blank";
    }

    return null;
  }

  static String? validateEmail(String? email) {
    if (email == null || email.trim().isEmpty) {
      return "Email field can not be blank";
    }

    if (!RegExp("[A-Za-z]@[A-Za-z].[A-Za-z]").hasMatch(email)) {
      return "Please enter a valid email adress";
    }

    return null;
  }

  static String? validatePassword(String? password) {
    if (password == null || password.trim().isEmpty) {
      return "Password field can not be blank";
    }
    if (password.trim().length < 5) {
      return "Password length must be 5 characters and up";
    }

    return null;
  }
}
