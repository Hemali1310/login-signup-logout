class Validator {
  static String? validateNAme({
    required String name,
  }) {
    if (name == null) {
      return null;
    }
    if (name.isEmpty) {
      return 'name cannot be empty';
    }
    return null;
  }

  static String? validateEmail({
    required String email,
  }) {
    if (email == null) {
      return null;
    }
    RegExp emailregexp = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    if(email.isEmpty){
      return 'email cannot be empty';
    }else if(!emailregexp.hasMatch(email)){
      return 'correct email';
    }
    return null;
  }

  static String? validatePAssword({required String password}){
    if(password == null){
      return null;
    }
    if(password.isEmpty){
      return 'password cannot be empty';
    }
    else if(password.length < 6){
      return 'enter password more than 6 character';
    }
    return null;
  }
}
