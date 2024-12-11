class EmailValidator{
  static final emailRegex = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

  static bool validate(String email){
    if (emailRegex.hasMatch(email)){
      return true;
    }else{
      return false;
    }
  }
}