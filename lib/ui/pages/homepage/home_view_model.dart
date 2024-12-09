//Generate Status Class
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_search/data/model/localsearch.dart';
import 'package:local_search/data/repository/search_repository.dart';
class HomeState{
  List<LocalItem> localItem;
  HomeState(this.localItem);
}
//Generate View Model
class HomeViewModel extends Notifier<HomeState> {
  @override
  HomeState build() {
    return HomeState([]);
  }

  //update status
  Future<void> searchLocals(String query) async {
    final searchRepository = SearchRepository();
    //이게 왜 되는..? 
    final locals = await searchRepository.searchLocals(query);
    state = HomeState(locals);
  }

}
//Generate ViewModel Admin - NotifierProvider instance
final homeViewModelProvider = NotifierProvider<HomeViewModel, HomeState> (() {
  return HomeViewModel();
});