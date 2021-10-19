import 'package:http/http.dart' as http;
import 'dart:convert';
class Networking{
  Networking(String a)
  {
    URL=a;
  }
  late final String URL;
  Future getData() async
  {
    http.Response response=await http.get(Uri.parse(URL));
    print(response.body);
    if(response.statusCode==200)
      {
        return jsonDecode(response.body)['clients'];
      }
    else{
      return "Error";
    }
  }
}