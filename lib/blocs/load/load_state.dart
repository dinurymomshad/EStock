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
  final List<dynamic> data;

  LoadSuccessState(this.data);
  @override
  List<Object> get props => [data];
}
