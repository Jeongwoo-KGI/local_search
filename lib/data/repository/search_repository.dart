
import 'dart:convert';

import 'package:http/http.dart';
import 'package:local_search/data/model/localsearch.dart';

class SearchRepository {
  Future<List<LocalItem>> searchLocals(String query) async {
    final client = Client();
    final response = await client.get(
      Uri.parse('https://openapi.naver.com/v1/search/local.json?query=$query&display=5'),
      headers: {
        'X-Naver-Client-Id' : 'MNH3pKRTjh1CSykZqrnL',
        'X-Naver-Client-Secret' : '8Z9zqVjrk5',
      },
    );
    //when Get request (Status Code: 200) => jsonDecode the body
    //else return empty list (error message if required)
    if (response.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(response.body);
      final items = List.from(map['items']);
      //Return MappedIterable to use fromJson function
      final iterable = items.map((e) { //mapped iterables
        return LocalItem.fromJson(e);
      });
      final list = iterable.toList();
      return list;
    } else {
      return [];
    }
  }
}