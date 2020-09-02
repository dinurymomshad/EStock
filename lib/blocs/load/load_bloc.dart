import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'load_event.dart';

part 'load_state.dart';

class LoadBloc extends Bloc<LoadEvent, LoadState> {
  @override
  Stream<LoadState> mapEventToState(
    LoadEvent event,
  ) async* {
    yield LoadInProgressState();
    switch (event.runtimeType) {
      case LoadInProgressEvent:
        yield LoadInProgressState();
        break;
      case LoadSuccessEvent:
        yield* _mapLoadSuccessEventToState(event);
        break;
    }
  }

  @override
  LoadState get initialState => LoadInitialState();

  Stream<LoadState> _mapLoadSuccessEventToState(LoadSuccessEvent event) async* {
    yield LoadSuccessState(event.jsonResponse);
  }
}
