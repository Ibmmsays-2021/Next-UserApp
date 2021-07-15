 
class UserLogin {
  String _phoneNumber = '';
  String _password = '';
  UserLogin(this._phoneNumber, this._password);


  String get phoneNumber => _phoneNumber;
  String get password => _password;

  set phoneNumber(String newPhone) {
    _phoneNumber = newPhone;
  }
  set password(String newPassword) {
    _password = newPassword;
  }
  
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["phoneNumber"] = _phoneNumber;
    map["password"] = _password;
    return map;
  }

  UserLogin.fromObject(dynamic o) {
    this._phoneNumber = o["phoneNumber"];
    this._password = o["password"];
  }
}
