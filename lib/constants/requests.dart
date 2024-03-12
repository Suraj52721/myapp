import 'package:http/http.dart' as http;
import 'package:gtfs_realtime_bindings/gtfs_realtime_bindings.dart';
import 'package:myapp/constants/apis.dart';

class ApiRequest {
  final url = Uri.parse('https://otd.delhi.gov.in/api/realtime/VehiclePositions.pb?key=$apiKey');
  Future<int> requestURL() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final feedMessage = FeedMessage.fromBuffer(response.bodyBytes);
      return feedMessage.entity.length;
    } else {
      return 404;
    }
  }
}
