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
    // TODO: implement mapEventToState
    switch (event.runtimeType) {
      case LoadInProgressEvent:
        yield* _mapLoadInProgressEventState(event);
        break;
      case LoadSuccessEvent:
        yield LoadInitialState();
        break;
    }
  }

  @override
  LoadState get initialState => LoadInitialState();

  Stream<LoadState> _mapLoadInProgressEventState(
      LoadInProgressEvent event) async* {
    yield LoadInProgressState();
  }
}
