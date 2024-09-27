import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

@Injectable()
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState()) {
    on<ChangeThemeMode>(_onChangeThemeMode);
    on<ChangeLanguage>(_onChangeLanguage);
  }

  void _onChangeThemeMode(ChangeThemeMode event, Emitter<AppState> emit) {
    emit(state.copyWith(themeMode: event.themeMode));
  }

  void _onChangeLanguage(ChangeLanguage event, Emitter<AppState> emit) {
    emit(state.copyWith(language: event.language));
  }
}
