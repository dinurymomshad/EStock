part of 'load_bloc.dart';

abstract class LoadEvent extends Equatable {
  const LoadEvent();
}

class LoadInitialEvent extends LoadEvent {
  @override
  List<Object> get props => [];
}

class LoadInProgressEvent extends LoadEvent {
  @override
  List<Object> get props => [];
}

class LoadSuccessEvent extends LoadEvent {
  final List<dynamic> jsonResponse;

  LoadSuccessEvent(this.jsonResponse);
  @override
  List<Object> get props => [jsonResponse];
}
