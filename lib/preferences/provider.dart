import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locationmaster/preferences/preference_notifier.dart';
import 'package:locationmaster/preferences/preference_state.dart';

export './preference_notifier.dart';
export './preference_state.dart';

final preferenceProvider =
    StateNotifierProvider<PreferenceNotifier, PreferenceState>((ref) => PreferenceNotifier());
