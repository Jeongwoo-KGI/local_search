
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:local_search/ui/pages/homepage/home_view_model.dart';

void main() {
  test('HomeViewModel Test', () async {
    //within ProviderScope, handles ViewModel
    //without generating Widgets
    final providerContainer = ProviderContainer();
    addTearDown(providerContainer.dispose);
    final homeVM = providerContainer.read(homeViewModelProvider.notifier);
    //initial homeVM should be [empty list]
    final initialState = providerContainer.read(homeViewModelProvider);
    expect(initialState.localItem.isEmpty, true);
    //when called upon, homeVM should show different result
    await homeVM.searchLocals('Seoul');
    final afterSearchState = providerContainer.read(homeViewModelProvider);
    expect(afterSearchState.localItem.isEmpty, false);
    afterSearchState.localItem.forEach((e) {
      print(e.toJson());
    }
    );
  });
}