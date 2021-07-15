class Categories {
  String _name = '';
  String _location = '';
  String _price = '';
  String _count = '';
  String _id = '';
  Categories(this._name, this._location, this._price, this._count,
      this._id);
  String get name => _name;
  String get location => _location;
  String get price => _price;
  String get count => _count;
  String get id => _id;

  set name(String newName) {
    _name = newName;
  }

  set location(String newLocation) {
    _location = newLocation;
  }

  set price(String newPrice) {
    _price = newPrice;
  }

  set count(String newCount) {
    _count = newCount;
  }

  set id(String newId) {
    _id = newId;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["name"] = _name;
    map["location"] = _location;
    map["price"] = _price;
    map["count"] = _count;
    map["id"] = _id;
    return map;
  }

  Categories.fromObject(dynamic o) {
    this._name = o["name"];
    this._location = o["location"];
    this._price = o["price"];
    this._count = o["count"];
    this._id = o["id"];
  }
}