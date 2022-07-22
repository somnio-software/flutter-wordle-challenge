part of 'home_bloc.dart';

enum HomeStatus {
  initial,
  loading,
  loaded,
  error,
}

class HomeState extends Equatable {
  const HomeState({
    required this.status,
  });

  const HomeState.initial()
      : this(        
          status: HomeStatus.initial,
        );

  final HomeStatus status;

  HomeState copyWith({
    HomeStatus? status,
  }) {
    return HomeState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        status,
      ];
}
