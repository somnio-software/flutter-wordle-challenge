part of 'splash_screen_bloc.dart';

abstract class SplashScreenEvent extends Equatable {
  const SplashScreenEvent();
}

class SplashScreenStartedEvent extends SplashScreenEvent {
  const SplashScreenStartedEvent({required this.onCompleted});

  final Function() onCompleted;

  @override
  List<Object> get props => [];
}
