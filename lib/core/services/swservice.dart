import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:star_wars/core/api/api_constants.dart';
import 'package:star_wars/core/api/end_points.dart';
import 'package:star_wars/core/models/people.dart';

class StarWarsService {
  Future<dynamic> swApiRequest() async {
    final endPoint = EndPoint.people;
    final _uri = Uri.https(APIConstants.BASE_URL, endPoint);
    final response = await http.get(_uri);
    if (response.statusCode == 200) {
      final people = People.fromJson(jsonDecode(response.body));
      return people;
    }
    return Exception();
  }
}
