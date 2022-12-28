import 'dart:convert';

import 'package:http/http.dart' as http;

String token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhcGlrZXkiOiIyMzFlMGNjYi1lOGRjLTQ2Y2ItYjI4Yy02ODg5MDU3MTEwYTIiLCJwZXJtaXNzaW9ucyI6WyJhbGxvd19qb2luIl0sImlhdCI6MTY3MjIxMjQ3OCwiZXhwIjoxNjcyODE3Mjc4fQ.aKGKYnRYucyMWVWNT4pxAVyppRCm4bbyyuN4XldS7a0";

Future<String> createMeeting() async {
  final http.Response httpResponse = await http.post(
    Uri.parse("https://api.videosdk.live/v2/rooms"),
    headers: {'Authorization': token},
  );

  return json.decode(httpResponse.body)['roomId'];
}
