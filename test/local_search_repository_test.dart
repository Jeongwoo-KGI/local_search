
import 'package:flutter_test/flutter_test.dart';
import 'package:local_search/data/repository/search_repository.dart';

void main() {
  test('LocalSearch Repository test', () async {
    SearchRepository searchRepository = SearchRepository();
    final locals = await searchRepository.searchLocals('Seoul');
    expect(locals.isEmpty, false);
    for (var local in locals) {
      print(local.toJson());
    }
  });
}