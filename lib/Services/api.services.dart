import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:project_trying/Models/categories%20.dart';
import 'package:project_trying/Models/userLogin.dart';
import 'package:project_trying/Models/userRegistartion.dart';

class APIServices {
  static String basUrl = 'http://osamahamdy-001-site1.htempurl.com/api/';
  static Map<String, String> header = {
    'Content-type': 'application/json',
    'Accept': 'application/json'
  };
  static var registerUrl = Uri.parse(basUrl + 'Registration/UserRegistration');
  static var loginUrl = Uri.parse(basUrl + 'Authentication/UserAuthenticate');
  static var categoriesUrl =
      Uri.parse(basUrl + 'PlayGround/GetPlayGroundCategories');
  static Future<String> login(UserLogin user) async {
    var myUser = user.toMap();
    var userBody = convert.json.encode(myUser);

    var res = await http.post(loginUrl, headers: header, body: userBody);
    print(res.body);
    return Future.value(res.statusCode == 200 ? 'Success' : 'Fail');
  }

  static Future<String> register(UserRegistartion user) async {
    var myUser = user.toMap();
    var userBody = convert.json.encode(myUser);

    var res = await http.post(registerUrl, headers: header, body: userBody);
    print(res.body);
    return Future.value(res.statusCode == 200 ? 'Success' : 'Fail');
  }

  static Future<List<Categories>> getCategories() async {
    var dta = await http.get(categoriesUrl);
    var list = convert.json.decode(dta.body);
    List<Categories> categoriesList;
    categoriesList = list.map((model) => Categories.fromObject(model)).toList();
    return categoriesList;
  }
}
