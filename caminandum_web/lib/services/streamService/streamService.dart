import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import 'package:caminandum_web/model/songDetails.dart';
import 'package:caminandum_web/model/eventItem.dart';

class StreamService {
  SongsDetails songsDetail = new SongsDetails();

  getSongName() async {
    var client = http.Client();

    http.Response response = await http.get(
      Uri.parse(
          'https://api.caminandum.com/api/v1/caminandum-radio-songs/current'),
    );

    var result = jsonDecode(utf8.decode(response.bodyBytes));
    print(result);
    songsDetail.cover = result['cover'];
    songsDetail.id = result['id'].toString();
    songsDetail.title = result['title'];
    songsDetail.artist = result['artist'];
    return songsDetail;
  }

  getEvent() async {
    http.Response response = await http.get(
      Uri.parse('https://api.caminandum.com/api/v1/public/events'),
    );
    var result = jsonDecode(utf8.decode(response.bodyBytes));
    print(result);
    var finalResult = result['results'];
    var eventList = <EventItem>[];
    if (finalResult != null) {
      for (var item in finalResult) {
        var eventItem = new EventItem();

        eventItem.title = item['title'];
        eventItem.summary = item['summary'];
        eventItem.start = DateFormat('kk:mm').format(
            DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").parse(item['start']));
        eventItem.end = DateFormat('kk:mm')
            .format(DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").parse(item['end']));
        eventItem.city = item['meeting_point']['city'];

        eventList.add(eventItem);
      }
    }

    return eventList;
  }
}
