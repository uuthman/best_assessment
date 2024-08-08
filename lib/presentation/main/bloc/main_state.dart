import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  factory MainState(
      {@Default(ViewState.initial) ViewState state,
      @Default(0) double progress,
      @Default(0) int totalSecs,
      String? formattedDuration,
      Uint8List? snapshot}) = _MainState;

}

enum ViewState { initial, start, inProgress, paused,  completed, resumed }

extension MainViewState on ViewState {
  bool get isInitial => this == ViewState.initial;
  bool get isStarted => this == ViewState.start;
  bool get isInProgress => this == ViewState.inProgress;
  bool get isPaused => this == ViewState.paused;
  bool get isCompleted => this == ViewState.completed;
  bool get isResumed => this == ViewState.resumed;
}
