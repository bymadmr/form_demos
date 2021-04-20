class ValidationMixin {
  String validateFirstName(String value) {
    if (value.length < 2) {
      return "First Name is must min two characters.";
    } else {
      return null;
    }
  }

  String validateLastName(String value) {
    if (value.length < 2) {
      return "Last Name is must min two characters.";
    } else {
      return null;
    }
  }

  String validateEmail(String value) {
    if (!value.contains("@")) {
      return "Mail is not valid.";
    } else {
      return null;
    }
  }

  String validatePass(String value) {
    if (value.length < 4) {
      return "Password is must min four characters.";
    } else {
      return null;
    }
  }
}
