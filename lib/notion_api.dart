import "package:http/http.dart" as http;
import "dart:convert" as converter;

class NotionDatabase {
  late var _name;
  NotionDatabase.fromJson(Map<String, dynamic> json) {
    this._name = json["title"]["text"]["content"];
    
  }
}

class NotionAPI {
  late String _INTEGRATE_KEY;

  NotionAPI(this._INTEGRATE_KEY);
}

void main() async {
  final htttRequestUri = Uri.https("catfact.ninja", "/fact");
  final httpPackageInfo = await http.read(htttRequestUri);
  print(httpPackageInfo);
}