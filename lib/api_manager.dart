import 'package:http/http.dart';

class SoccerApi {
  final String apiUrl = "https://v3.football.api-sports.io/fixtures?live=all";

  //api active key
  static const api_key = "ea7e05423674ea675f8eeb9a1b49b608";

  // api headers add

  static const header = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': api_key
  };

  //create method

}
