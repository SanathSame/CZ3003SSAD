
class LoginController{

  static bool accountInDB(String email, String password){
    if(email == 'j' && password == 'a'){
      return true;
    }
    return false;
  }
}