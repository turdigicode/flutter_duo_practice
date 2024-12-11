class NameValidator{
  static bool validate(String username){
    if (username.length < 2){
      return false;
    }else{
      return true;
    }
  }
}