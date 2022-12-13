import 'package:firebas/api.dart';
import 'package:http/http.dart' as http;

getName() async {
  var client = http.Client();

  var uri = Uri.parse('https://demo2.conscor.com/api/activity/5');
  print('1');
  var response = await client.get(uri);
  print('2');
  if (response.statusCode == 200) {
    print('3');
    // body convert to json
    var data = welcomeFromJson(response.body);
    print('4');
    return data.data;
  }
}
