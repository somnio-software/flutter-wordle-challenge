part of 'splash_screen_bloc.dart';

enum SplashScreenStatus {
  initial,
  loading,
  loaded,
  error,
}

class SplashScreenState extends Equatable {
  const SplashScreenState({
    required this.status,
  });

  const SplashScreenState.initial()
      : this(        
          status: SplashScreenStatus.initial,
        );

  final SplashScreenStatus status;

  SplashScreenState copyWith({
    SplashScreenStatus? status,
  }) {
    return SplashScreenState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        status,
      ];
}
