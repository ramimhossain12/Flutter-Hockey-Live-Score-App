import 'dart:convert';

import 'package:http/http.dart';
import 'package:sccore_app/soccermodel.dart';

class SoccerApi {
  final String apiUrl = "https://v3.football.api-sports.io/fixtures?live=all";

  //api active key

  // api headers add

  static const header = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "ea7e05423674ea675f8eeb9a1b49b608"

};

  //create method

  Future<List<SoccerMatch>> getAllMatches() async {
    Response res = await get(apiUrl, headers: header);
    var body;

    if (res.statusCode == 200) {
      // this mean that we are connected to the data base
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body['response'];
      print("Api service: ${body}"); // to debug
      List<SoccerMatch> matches = matchesList
          .map((dynamic item) => SoccerMatch.fromJson(item))
          .toList();

      return matches;
    }
  }

  }

