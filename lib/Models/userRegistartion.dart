class UserRegistartion {
  String _name = '';
  String _address = '';
  String _email = '';
  String _password = '';
  String _rePassword = '';
  UserRegistartion(
      this._name, this._email, this._address, this._password, this._rePassword);
  String get name => _name;
  String get address => _address;
  String get email => _email;
  String get password => _password;
  String get rePassword => _rePassword;

  set name(String newName) {
    _name = newName;
  }

  set address(String newAddress) {
    _address = newAddress;
  }

  set email(String newEmail) {
    _email = newEmail;
  }

  set password(String newPassword) {
    _password = newPassword;
  }

  set rePassword(String newRePassword) {
    _rePassword = newRePassword;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["name"] = _name;
    map["address"] = _address;
    map["email"] = _email;
    map["password"] = _password;
    map["rePassword"] = _rePassword;
    return map;
  }

  UserRegistartion.fromObject(dynamic o) {
    this._name = o["name"];
    this._address = o["address"];
    this._email = o["email"];
    this._password = o["password"];
    this._rePassword = o["rePassword"];
  }
}
