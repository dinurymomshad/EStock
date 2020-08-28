part of 'load_bloc.dart';

abstract class LoadState extends Equatable {
  const LoadState();
}

class LoadInitialState extends LoadState {
  @override
  List<Object> get props => [];
}

class LoadInProgressState extends LoadState {
  @override
  List<Object> get props => [];
}

class LoadSuccessState extends LoadState {
  @override
  List<Object> get props => [];
}
