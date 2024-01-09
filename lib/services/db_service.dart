import 'package:shared_preferences/shared_preferences.dart';

class DBService{

  static Future<bool> setResult(int enteredValue) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setInt('result', enteredValue);
  }

  static Future<int?> getResult() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getInt('result');
  }

  static Future deleteResult() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.remove('result');
  }
 
}