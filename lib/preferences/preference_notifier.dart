import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locationmaster/preferences/preference_state.dart';

class PreferenceNotifier extends StateNotifier<PreferenceState> {
  PreferenceNotifier() : super(PreferenceState.initial());

  load() async {
    /// NOTE: load the data from some persistence
  }

  update() {
    state = state.copyWith(isFirstInstall: false);
  }

  toggleTheme(AppTheme theme) {
    if (theme == state.theme) {
      return;
    }

    state = state.copyWith(theme: theme);
  }
}
