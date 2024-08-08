import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.freezed.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.onStart(int duration) = MainEventOnStart;
  const factory MainEvent.onPaused() = MainEventOnPaused;
  const factory MainEvent.onStop() = MainEventOnStop;
  const factory MainEvent.onResume() = MainEventOnResume;
  const factory MainEvent.onTicked(int duration) = MainEventOnTicked;
  const factory MainEvent.snapshotSuccessful(Uint8List raw) = MainEventSnapshotSuccessful;
  const factory MainEvent.closeSnapshot() = MainEventCloseSnapshot;
}