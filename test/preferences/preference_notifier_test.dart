import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:locationmaster/preferences/provider.dart';
import 'package:mockito/mockito.dart';

class Listener extends Mock {
  void call(PreferenceState? previous, PreferenceState value);
}

void main() {
  testWidgets('Verify toggle app theme', (tester) async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final listener = Listener();

    container.listen<PreferenceState>(
      preferenceProvider,
      listener,
      fireImmediately: true,
    );

    final theme = container.read(preferenceProvider).theme;

    expect(theme, AppTheme.light);

    // verify(listener(null, PreferenceState.initial())).called(1);

    // verifyNoMoreInteractions(listener);

    // We increment the value
    container.read(preferenceProvider.notifier).toggleTheme(AppTheme.dark);

    final atheme = container.read(preferenceProvider).theme;

    expect(atheme, AppTheme.dark);

    // The listener was called again, but with 1 this time
    // verify(listener(
    //         PreferenceState.initial(), PreferenceState.initial().copyWith(theme: AppTheme.dark)))
    //     .called(1);
    // verifyNoMoreInteractions(listener);
  });
}
