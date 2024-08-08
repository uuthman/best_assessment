import 'dart:async';
import 'package:assessment_test/app/ticker.dart';
import 'package:assessment_test/presentation/main/bloc/main_event.dart';
import 'package:assessment_test/presentation/main/bloc/main_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final Ticker _ticker;

  StreamSubscription<int>? _tickerSubscription;

  MainBloc(this._ticker) : super(MainState()) {
    on<MainEventOnStart>((event, emit) {
      emit(state.copyWith(
          state: ViewState.inProgress,
          totalSecs: event.duration,
          formattedDuration: _convertSecondsToHMS(event.duration)));
      _tickerSubscription?.cancel();
      _tickerSubscription =
          _ticker.tick(ticks: event.duration).listen((duration) {
        add(MainEventOnTicked(duration));
      });
    });

    on<MainEventOnPaused>((event, emit) {
      if (state.state == ViewState.inProgress) {
        _tickerSubscription?.pause();
        emit(state.copyWith(state: ViewState.paused));
      }
    });

    on<MainEventOnResume>((event, emit) {
      if (state.state == ViewState.paused) {
        _tickerSubscription?.resume();
        emit(state.copyWith(state: ViewState.inProgress));
      }
    });

    on<MainEventOnTicked>(ticked);

    on<MainEventSnapshotSuccessful>((event, emit) {
      emit(state.copyWith(snapshot: event.raw));
    });

    on<MainEventCloseSnapshot>((event, emit) {
      emit(state.copyWith(snapshot: null, state: ViewState.initial));
    });

    on<MainEventOnStop>((event, emit) {
      _tickerSubscription?.cancel();
      emit(state.copyWith(
          snapshot: null, progress: 0, totalSecs: 0, state: ViewState.initial));
    });
  }

  ticked(MainEventOnTicked event, Emitter<MainState> emit) async {
    if (event.duration > 0) {
      final total = state.totalSecs;
      final remaining = event.duration;
      final progress = (total - remaining) / total;
      final formattedDuration = _convertSecondsToHMS(remaining);
      emit(state.copyWith(
          state: ViewState.inProgress,
          progress: progress,
          formattedDuration: formattedDuration));
    } else {
      emit(state.copyWith(
          state: ViewState.completed, progress: 0, totalSecs: 0));
      try {
        //final snapshot = await _cameraService.takePicture();
        //emit(state.copyWith(snapshot: snapshot));
      } catch (e) {
        print(e.toString());
      }
    }
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  String _convertSecondsToHMS(int totalSeconds) {
    int hours = totalSeconds ~/ 3600;
    int minutes = (totalSeconds % 3600) ~/ 60;
    int seconds = totalSeconds % 60;

    String hoursStr = hours.toString().padLeft(2, '0');
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = seconds.toString().padLeft(2, '0');

    if (hours > 0) {
      return '$hoursStr:$minutesStr:$secondsStr';
    } else if (minutes > 0) {
      return '$minutesStr:$secondsStr';
    } else {
      return '$seconds';
    }
  }
}
