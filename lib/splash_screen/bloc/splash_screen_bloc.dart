import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_screen_event.dart';
part 'splash_screen_state.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc() : super(const SplashScreenState.initial()) {
    on<SplashScreenStartedEvent>(_handleSplashScreenStartedEvent);
  }
  void _handleSplashScreenStartedEvent(
    SplashScreenStartedEvent event,
    Emitter<SplashScreenState> emit,
  ) {
    Timer(
      const Duration(seconds: 3),
      event.onCompleted,
    );
  }
}
