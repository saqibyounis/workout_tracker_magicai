part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default('en') String language,
  }) = _AppSettingsState;
}
