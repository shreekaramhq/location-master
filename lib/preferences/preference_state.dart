import 'package:freezed_annotation/freezed_annotation.dart';
part 'preference_state.freezed.dart';

enum AppTheme { light, dark }

@freezed
class PreferenceState with _$PreferenceState {
  const factory PreferenceState({
    required AppTheme theme,
    required bool isFirstInstall,
  }) = _PreferenceState;

  factory PreferenceState.initial() {
    return const PreferenceState(
      theme: AppTheme.light,
      isFirstInstall: true,
    );
  }
}
