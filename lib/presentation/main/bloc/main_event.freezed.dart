// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) onStart,
    required TResult Function() onPaused,
    required TResult Function() onStop,
    required TResult Function() onResume,
    required TResult Function(int duration) onTicked,
    required TResult Function(Uint8List raw) snapshotSuccessful,
    required TResult Function() closeSnapshot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? onStart,
    TResult? Function()? onPaused,
    TResult? Function()? onStop,
    TResult? Function()? onResume,
    TResult? Function(int duration)? onTicked,
    TResult? Function(Uint8List raw)? snapshotSuccessful,
    TResult? Function()? closeSnapshot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? onStart,
    TResult Function()? onPaused,
    TResult Function()? onStop,
    TResult Function()? onResume,
    TResult Function(int duration)? onTicked,
    TResult Function(Uint8List raw)? snapshotSuccessful,
    TResult Function()? closeSnapshot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventOnStart value) onStart,
    required TResult Function(MainEventOnPaused value) onPaused,
    required TResult Function(MainEventOnStop value) onStop,
    required TResult Function(MainEventOnResume value) onResume,
    required TResult Function(MainEventOnTicked value) onTicked,
    required TResult Function(MainEventSnapshotSuccessful value)
        snapshotSuccessful,
    required TResult Function(MainEventCloseSnapshot value) closeSnapshot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventOnStart value)? onStart,
    TResult? Function(MainEventOnPaused value)? onPaused,
    TResult? Function(MainEventOnStop value)? onStop,
    TResult? Function(MainEventOnResume value)? onResume,
    TResult? Function(MainEventOnTicked value)? onTicked,
    TResult? Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult? Function(MainEventCloseSnapshot value)? closeSnapshot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventOnStart value)? onStart,
    TResult Function(MainEventOnPaused value)? onPaused,
    TResult Function(MainEventOnStop value)? onStop,
    TResult Function(MainEventOnResume value)? onResume,
    TResult Function(MainEventOnTicked value)? onTicked,
    TResult Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult Function(MainEventCloseSnapshot value)? closeSnapshot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainEventOnStartImplCopyWith<$Res> {
  factory _$$MainEventOnStartImplCopyWith(_$MainEventOnStartImpl value,
          $Res Function(_$MainEventOnStartImpl) then) =
      __$$MainEventOnStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$MainEventOnStartImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventOnStartImpl>
    implements _$$MainEventOnStartImplCopyWith<$Res> {
  __$$MainEventOnStartImplCopyWithImpl(_$MainEventOnStartImpl _value,
      $Res Function(_$MainEventOnStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$MainEventOnStartImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainEventOnStartImpl
    with DiagnosticableTreeMixin
    implements MainEventOnStart {
  const _$MainEventOnStartImpl(this.duration);

  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.onStart(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.onStart'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainEventOnStartImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainEventOnStartImplCopyWith<_$MainEventOnStartImpl> get copyWith =>
      __$$MainEventOnStartImplCopyWithImpl<_$MainEventOnStartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) onStart,
    required TResult Function() onPaused,
    required TResult Function() onStop,
    required TResult Function() onResume,
    required TResult Function(int duration) onTicked,
    required TResult Function(Uint8List raw) snapshotSuccessful,
    required TResult Function() closeSnapshot,
  }) {
    return onStart(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? onStart,
    TResult? Function()? onPaused,
    TResult? Function()? onStop,
    TResult? Function()? onResume,
    TResult? Function(int duration)? onTicked,
    TResult? Function(Uint8List raw)? snapshotSuccessful,
    TResult? Function()? closeSnapshot,
  }) {
    return onStart?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? onStart,
    TResult Function()? onPaused,
    TResult Function()? onStop,
    TResult Function()? onResume,
    TResult Function(int duration)? onTicked,
    TResult Function(Uint8List raw)? snapshotSuccessful,
    TResult Function()? closeSnapshot,
    required TResult orElse(),
  }) {
    if (onStart != null) {
      return onStart(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventOnStart value) onStart,
    required TResult Function(MainEventOnPaused value) onPaused,
    required TResult Function(MainEventOnStop value) onStop,
    required TResult Function(MainEventOnResume value) onResume,
    required TResult Function(MainEventOnTicked value) onTicked,
    required TResult Function(MainEventSnapshotSuccessful value)
        snapshotSuccessful,
    required TResult Function(MainEventCloseSnapshot value) closeSnapshot,
  }) {
    return onStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventOnStart value)? onStart,
    TResult? Function(MainEventOnPaused value)? onPaused,
    TResult? Function(MainEventOnStop value)? onStop,
    TResult? Function(MainEventOnResume value)? onResume,
    TResult? Function(MainEventOnTicked value)? onTicked,
    TResult? Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult? Function(MainEventCloseSnapshot value)? closeSnapshot,
  }) {
    return onStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventOnStart value)? onStart,
    TResult Function(MainEventOnPaused value)? onPaused,
    TResult Function(MainEventOnStop value)? onStop,
    TResult Function(MainEventOnResume value)? onResume,
    TResult Function(MainEventOnTicked value)? onTicked,
    TResult Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult Function(MainEventCloseSnapshot value)? closeSnapshot,
    required TResult orElse(),
  }) {
    if (onStart != null) {
      return onStart(this);
    }
    return orElse();
  }
}

abstract class MainEventOnStart implements MainEvent {
  const factory MainEventOnStart(final int duration) = _$MainEventOnStartImpl;

  int get duration;
  @JsonKey(ignore: true)
  _$$MainEventOnStartImplCopyWith<_$MainEventOnStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainEventOnPausedImplCopyWith<$Res> {
  factory _$$MainEventOnPausedImplCopyWith(_$MainEventOnPausedImpl value,
          $Res Function(_$MainEventOnPausedImpl) then) =
      __$$MainEventOnPausedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainEventOnPausedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventOnPausedImpl>
    implements _$$MainEventOnPausedImplCopyWith<$Res> {
  __$$MainEventOnPausedImplCopyWithImpl(_$MainEventOnPausedImpl _value,
      $Res Function(_$MainEventOnPausedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainEventOnPausedImpl
    with DiagnosticableTreeMixin
    implements MainEventOnPaused {
  const _$MainEventOnPausedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.onPaused()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainEvent.onPaused'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainEventOnPausedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) onStart,
    required TResult Function() onPaused,
    required TResult Function() onStop,
    required TResult Function() onResume,
    required TResult Function(int duration) onTicked,
    required TResult Function(Uint8List raw) snapshotSuccessful,
    required TResult Function() closeSnapshot,
  }) {
    return onPaused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? onStart,
    TResult? Function()? onPaused,
    TResult? Function()? onStop,
    TResult? Function()? onResume,
    TResult? Function(int duration)? onTicked,
    TResult? Function(Uint8List raw)? snapshotSuccessful,
    TResult? Function()? closeSnapshot,
  }) {
    return onPaused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? onStart,
    TResult Function()? onPaused,
    TResult Function()? onStop,
    TResult Function()? onResume,
    TResult Function(int duration)? onTicked,
    TResult Function(Uint8List raw)? snapshotSuccessful,
    TResult Function()? closeSnapshot,
    required TResult orElse(),
  }) {
    if (onPaused != null) {
      return onPaused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventOnStart value) onStart,
    required TResult Function(MainEventOnPaused value) onPaused,
    required TResult Function(MainEventOnStop value) onStop,
    required TResult Function(MainEventOnResume value) onResume,
    required TResult Function(MainEventOnTicked value) onTicked,
    required TResult Function(MainEventSnapshotSuccessful value)
        snapshotSuccessful,
    required TResult Function(MainEventCloseSnapshot value) closeSnapshot,
  }) {
    return onPaused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventOnStart value)? onStart,
    TResult? Function(MainEventOnPaused value)? onPaused,
    TResult? Function(MainEventOnStop value)? onStop,
    TResult? Function(MainEventOnResume value)? onResume,
    TResult? Function(MainEventOnTicked value)? onTicked,
    TResult? Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult? Function(MainEventCloseSnapshot value)? closeSnapshot,
  }) {
    return onPaused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventOnStart value)? onStart,
    TResult Function(MainEventOnPaused value)? onPaused,
    TResult Function(MainEventOnStop value)? onStop,
    TResult Function(MainEventOnResume value)? onResume,
    TResult Function(MainEventOnTicked value)? onTicked,
    TResult Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult Function(MainEventCloseSnapshot value)? closeSnapshot,
    required TResult orElse(),
  }) {
    if (onPaused != null) {
      return onPaused(this);
    }
    return orElse();
  }
}

abstract class MainEventOnPaused implements MainEvent {
  const factory MainEventOnPaused() = _$MainEventOnPausedImpl;
}

/// @nodoc
abstract class _$$MainEventOnStopImplCopyWith<$Res> {
  factory _$$MainEventOnStopImplCopyWith(_$MainEventOnStopImpl value,
          $Res Function(_$MainEventOnStopImpl) then) =
      __$$MainEventOnStopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainEventOnStopImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventOnStopImpl>
    implements _$$MainEventOnStopImplCopyWith<$Res> {
  __$$MainEventOnStopImplCopyWithImpl(
      _$MainEventOnStopImpl _value, $Res Function(_$MainEventOnStopImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainEventOnStopImpl
    with DiagnosticableTreeMixin
    implements MainEventOnStop {
  const _$MainEventOnStopImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.onStop()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainEvent.onStop'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainEventOnStopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) onStart,
    required TResult Function() onPaused,
    required TResult Function() onStop,
    required TResult Function() onResume,
    required TResult Function(int duration) onTicked,
    required TResult Function(Uint8List raw) snapshotSuccessful,
    required TResult Function() closeSnapshot,
  }) {
    return onStop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? onStart,
    TResult? Function()? onPaused,
    TResult? Function()? onStop,
    TResult? Function()? onResume,
    TResult? Function(int duration)? onTicked,
    TResult? Function(Uint8List raw)? snapshotSuccessful,
    TResult? Function()? closeSnapshot,
  }) {
    return onStop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? onStart,
    TResult Function()? onPaused,
    TResult Function()? onStop,
    TResult Function()? onResume,
    TResult Function(int duration)? onTicked,
    TResult Function(Uint8List raw)? snapshotSuccessful,
    TResult Function()? closeSnapshot,
    required TResult orElse(),
  }) {
    if (onStop != null) {
      return onStop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventOnStart value) onStart,
    required TResult Function(MainEventOnPaused value) onPaused,
    required TResult Function(MainEventOnStop value) onStop,
    required TResult Function(MainEventOnResume value) onResume,
    required TResult Function(MainEventOnTicked value) onTicked,
    required TResult Function(MainEventSnapshotSuccessful value)
        snapshotSuccessful,
    required TResult Function(MainEventCloseSnapshot value) closeSnapshot,
  }) {
    return onStop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventOnStart value)? onStart,
    TResult? Function(MainEventOnPaused value)? onPaused,
    TResult? Function(MainEventOnStop value)? onStop,
    TResult? Function(MainEventOnResume value)? onResume,
    TResult? Function(MainEventOnTicked value)? onTicked,
    TResult? Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult? Function(MainEventCloseSnapshot value)? closeSnapshot,
  }) {
    return onStop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventOnStart value)? onStart,
    TResult Function(MainEventOnPaused value)? onPaused,
    TResult Function(MainEventOnStop value)? onStop,
    TResult Function(MainEventOnResume value)? onResume,
    TResult Function(MainEventOnTicked value)? onTicked,
    TResult Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult Function(MainEventCloseSnapshot value)? closeSnapshot,
    required TResult orElse(),
  }) {
    if (onStop != null) {
      return onStop(this);
    }
    return orElse();
  }
}

abstract class MainEventOnStop implements MainEvent {
  const factory MainEventOnStop() = _$MainEventOnStopImpl;
}

/// @nodoc
abstract class _$$MainEventOnResumeImplCopyWith<$Res> {
  factory _$$MainEventOnResumeImplCopyWith(_$MainEventOnResumeImpl value,
          $Res Function(_$MainEventOnResumeImpl) then) =
      __$$MainEventOnResumeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainEventOnResumeImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventOnResumeImpl>
    implements _$$MainEventOnResumeImplCopyWith<$Res> {
  __$$MainEventOnResumeImplCopyWithImpl(_$MainEventOnResumeImpl _value,
      $Res Function(_$MainEventOnResumeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainEventOnResumeImpl
    with DiagnosticableTreeMixin
    implements MainEventOnResume {
  const _$MainEventOnResumeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.onResume()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainEvent.onResume'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainEventOnResumeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) onStart,
    required TResult Function() onPaused,
    required TResult Function() onStop,
    required TResult Function() onResume,
    required TResult Function(int duration) onTicked,
    required TResult Function(Uint8List raw) snapshotSuccessful,
    required TResult Function() closeSnapshot,
  }) {
    return onResume();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? onStart,
    TResult? Function()? onPaused,
    TResult? Function()? onStop,
    TResult? Function()? onResume,
    TResult? Function(int duration)? onTicked,
    TResult? Function(Uint8List raw)? snapshotSuccessful,
    TResult? Function()? closeSnapshot,
  }) {
    return onResume?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? onStart,
    TResult Function()? onPaused,
    TResult Function()? onStop,
    TResult Function()? onResume,
    TResult Function(int duration)? onTicked,
    TResult Function(Uint8List raw)? snapshotSuccessful,
    TResult Function()? closeSnapshot,
    required TResult orElse(),
  }) {
    if (onResume != null) {
      return onResume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventOnStart value) onStart,
    required TResult Function(MainEventOnPaused value) onPaused,
    required TResult Function(MainEventOnStop value) onStop,
    required TResult Function(MainEventOnResume value) onResume,
    required TResult Function(MainEventOnTicked value) onTicked,
    required TResult Function(MainEventSnapshotSuccessful value)
        snapshotSuccessful,
    required TResult Function(MainEventCloseSnapshot value) closeSnapshot,
  }) {
    return onResume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventOnStart value)? onStart,
    TResult? Function(MainEventOnPaused value)? onPaused,
    TResult? Function(MainEventOnStop value)? onStop,
    TResult? Function(MainEventOnResume value)? onResume,
    TResult? Function(MainEventOnTicked value)? onTicked,
    TResult? Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult? Function(MainEventCloseSnapshot value)? closeSnapshot,
  }) {
    return onResume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventOnStart value)? onStart,
    TResult Function(MainEventOnPaused value)? onPaused,
    TResult Function(MainEventOnStop value)? onStop,
    TResult Function(MainEventOnResume value)? onResume,
    TResult Function(MainEventOnTicked value)? onTicked,
    TResult Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult Function(MainEventCloseSnapshot value)? closeSnapshot,
    required TResult orElse(),
  }) {
    if (onResume != null) {
      return onResume(this);
    }
    return orElse();
  }
}

abstract class MainEventOnResume implements MainEvent {
  const factory MainEventOnResume() = _$MainEventOnResumeImpl;
}

/// @nodoc
abstract class _$$MainEventOnTickedImplCopyWith<$Res> {
  factory _$$MainEventOnTickedImplCopyWith(_$MainEventOnTickedImpl value,
          $Res Function(_$MainEventOnTickedImpl) then) =
      __$$MainEventOnTickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$MainEventOnTickedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventOnTickedImpl>
    implements _$$MainEventOnTickedImplCopyWith<$Res> {
  __$$MainEventOnTickedImplCopyWithImpl(_$MainEventOnTickedImpl _value,
      $Res Function(_$MainEventOnTickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$MainEventOnTickedImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainEventOnTickedImpl
    with DiagnosticableTreeMixin
    implements MainEventOnTicked {
  const _$MainEventOnTickedImpl(this.duration);

  @override
  final int duration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.onTicked(duration: $duration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.onTicked'))
      ..add(DiagnosticsProperty('duration', duration));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainEventOnTickedImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainEventOnTickedImplCopyWith<_$MainEventOnTickedImpl> get copyWith =>
      __$$MainEventOnTickedImplCopyWithImpl<_$MainEventOnTickedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) onStart,
    required TResult Function() onPaused,
    required TResult Function() onStop,
    required TResult Function() onResume,
    required TResult Function(int duration) onTicked,
    required TResult Function(Uint8List raw) snapshotSuccessful,
    required TResult Function() closeSnapshot,
  }) {
    return onTicked(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? onStart,
    TResult? Function()? onPaused,
    TResult? Function()? onStop,
    TResult? Function()? onResume,
    TResult? Function(int duration)? onTicked,
    TResult? Function(Uint8List raw)? snapshotSuccessful,
    TResult? Function()? closeSnapshot,
  }) {
    return onTicked?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? onStart,
    TResult Function()? onPaused,
    TResult Function()? onStop,
    TResult Function()? onResume,
    TResult Function(int duration)? onTicked,
    TResult Function(Uint8List raw)? snapshotSuccessful,
    TResult Function()? closeSnapshot,
    required TResult orElse(),
  }) {
    if (onTicked != null) {
      return onTicked(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventOnStart value) onStart,
    required TResult Function(MainEventOnPaused value) onPaused,
    required TResult Function(MainEventOnStop value) onStop,
    required TResult Function(MainEventOnResume value) onResume,
    required TResult Function(MainEventOnTicked value) onTicked,
    required TResult Function(MainEventSnapshotSuccessful value)
        snapshotSuccessful,
    required TResult Function(MainEventCloseSnapshot value) closeSnapshot,
  }) {
    return onTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventOnStart value)? onStart,
    TResult? Function(MainEventOnPaused value)? onPaused,
    TResult? Function(MainEventOnStop value)? onStop,
    TResult? Function(MainEventOnResume value)? onResume,
    TResult? Function(MainEventOnTicked value)? onTicked,
    TResult? Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult? Function(MainEventCloseSnapshot value)? closeSnapshot,
  }) {
    return onTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventOnStart value)? onStart,
    TResult Function(MainEventOnPaused value)? onPaused,
    TResult Function(MainEventOnStop value)? onStop,
    TResult Function(MainEventOnResume value)? onResume,
    TResult Function(MainEventOnTicked value)? onTicked,
    TResult Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult Function(MainEventCloseSnapshot value)? closeSnapshot,
    required TResult orElse(),
  }) {
    if (onTicked != null) {
      return onTicked(this);
    }
    return orElse();
  }
}

abstract class MainEventOnTicked implements MainEvent {
  const factory MainEventOnTicked(final int duration) = _$MainEventOnTickedImpl;

  int get duration;
  @JsonKey(ignore: true)
  _$$MainEventOnTickedImplCopyWith<_$MainEventOnTickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainEventSnapshotSuccessfulImplCopyWith<$Res> {
  factory _$$MainEventSnapshotSuccessfulImplCopyWith(
          _$MainEventSnapshotSuccessfulImpl value,
          $Res Function(_$MainEventSnapshotSuccessfulImpl) then) =
      __$$MainEventSnapshotSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List raw});
}

/// @nodoc
class __$$MainEventSnapshotSuccessfulImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventSnapshotSuccessfulImpl>
    implements _$$MainEventSnapshotSuccessfulImplCopyWith<$Res> {
  __$$MainEventSnapshotSuccessfulImplCopyWithImpl(
      _$MainEventSnapshotSuccessfulImpl _value,
      $Res Function(_$MainEventSnapshotSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = null,
  }) {
    return _then(_$MainEventSnapshotSuccessfulImpl(
      null == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$MainEventSnapshotSuccessfulImpl
    with DiagnosticableTreeMixin
    implements MainEventSnapshotSuccessful {
  const _$MainEventSnapshotSuccessfulImpl(this.raw);

  @override
  final Uint8List raw;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.snapshotSuccessful(raw: $raw)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.snapshotSuccessful'))
      ..add(DiagnosticsProperty('raw', raw));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainEventSnapshotSuccessfulImpl &&
            const DeepCollectionEquality().equals(other.raw, raw));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(raw));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainEventSnapshotSuccessfulImplCopyWith<_$MainEventSnapshotSuccessfulImpl>
      get copyWith => __$$MainEventSnapshotSuccessfulImplCopyWithImpl<
          _$MainEventSnapshotSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) onStart,
    required TResult Function() onPaused,
    required TResult Function() onStop,
    required TResult Function() onResume,
    required TResult Function(int duration) onTicked,
    required TResult Function(Uint8List raw) snapshotSuccessful,
    required TResult Function() closeSnapshot,
  }) {
    return snapshotSuccessful(raw);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? onStart,
    TResult? Function()? onPaused,
    TResult? Function()? onStop,
    TResult? Function()? onResume,
    TResult? Function(int duration)? onTicked,
    TResult? Function(Uint8List raw)? snapshotSuccessful,
    TResult? Function()? closeSnapshot,
  }) {
    return snapshotSuccessful?.call(raw);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? onStart,
    TResult Function()? onPaused,
    TResult Function()? onStop,
    TResult Function()? onResume,
    TResult Function(int duration)? onTicked,
    TResult Function(Uint8List raw)? snapshotSuccessful,
    TResult Function()? closeSnapshot,
    required TResult orElse(),
  }) {
    if (snapshotSuccessful != null) {
      return snapshotSuccessful(raw);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventOnStart value) onStart,
    required TResult Function(MainEventOnPaused value) onPaused,
    required TResult Function(MainEventOnStop value) onStop,
    required TResult Function(MainEventOnResume value) onResume,
    required TResult Function(MainEventOnTicked value) onTicked,
    required TResult Function(MainEventSnapshotSuccessful value)
        snapshotSuccessful,
    required TResult Function(MainEventCloseSnapshot value) closeSnapshot,
  }) {
    return snapshotSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventOnStart value)? onStart,
    TResult? Function(MainEventOnPaused value)? onPaused,
    TResult? Function(MainEventOnStop value)? onStop,
    TResult? Function(MainEventOnResume value)? onResume,
    TResult? Function(MainEventOnTicked value)? onTicked,
    TResult? Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult? Function(MainEventCloseSnapshot value)? closeSnapshot,
  }) {
    return snapshotSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventOnStart value)? onStart,
    TResult Function(MainEventOnPaused value)? onPaused,
    TResult Function(MainEventOnStop value)? onStop,
    TResult Function(MainEventOnResume value)? onResume,
    TResult Function(MainEventOnTicked value)? onTicked,
    TResult Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult Function(MainEventCloseSnapshot value)? closeSnapshot,
    required TResult orElse(),
  }) {
    if (snapshotSuccessful != null) {
      return snapshotSuccessful(this);
    }
    return orElse();
  }
}

abstract class MainEventSnapshotSuccessful implements MainEvent {
  const factory MainEventSnapshotSuccessful(final Uint8List raw) =
      _$MainEventSnapshotSuccessfulImpl;

  Uint8List get raw;
  @JsonKey(ignore: true)
  _$$MainEventSnapshotSuccessfulImplCopyWith<_$MainEventSnapshotSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainEventCloseSnapshotImplCopyWith<$Res> {
  factory _$$MainEventCloseSnapshotImplCopyWith(
          _$MainEventCloseSnapshotImpl value,
          $Res Function(_$MainEventCloseSnapshotImpl) then) =
      __$$MainEventCloseSnapshotImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainEventCloseSnapshotImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventCloseSnapshotImpl>
    implements _$$MainEventCloseSnapshotImplCopyWith<$Res> {
  __$$MainEventCloseSnapshotImplCopyWithImpl(
      _$MainEventCloseSnapshotImpl _value,
      $Res Function(_$MainEventCloseSnapshotImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainEventCloseSnapshotImpl
    with DiagnosticableTreeMixin
    implements MainEventCloseSnapshot {
  const _$MainEventCloseSnapshotImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.closeSnapshot()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainEvent.closeSnapshot'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainEventCloseSnapshotImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) onStart,
    required TResult Function() onPaused,
    required TResult Function() onStop,
    required TResult Function() onResume,
    required TResult Function(int duration) onTicked,
    required TResult Function(Uint8List raw) snapshotSuccessful,
    required TResult Function() closeSnapshot,
  }) {
    return closeSnapshot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? onStart,
    TResult? Function()? onPaused,
    TResult? Function()? onStop,
    TResult? Function()? onResume,
    TResult? Function(int duration)? onTicked,
    TResult? Function(Uint8List raw)? snapshotSuccessful,
    TResult? Function()? closeSnapshot,
  }) {
    return closeSnapshot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? onStart,
    TResult Function()? onPaused,
    TResult Function()? onStop,
    TResult Function()? onResume,
    TResult Function(int duration)? onTicked,
    TResult Function(Uint8List raw)? snapshotSuccessful,
    TResult Function()? closeSnapshot,
    required TResult orElse(),
  }) {
    if (closeSnapshot != null) {
      return closeSnapshot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventOnStart value) onStart,
    required TResult Function(MainEventOnPaused value) onPaused,
    required TResult Function(MainEventOnStop value) onStop,
    required TResult Function(MainEventOnResume value) onResume,
    required TResult Function(MainEventOnTicked value) onTicked,
    required TResult Function(MainEventSnapshotSuccessful value)
        snapshotSuccessful,
    required TResult Function(MainEventCloseSnapshot value) closeSnapshot,
  }) {
    return closeSnapshot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventOnStart value)? onStart,
    TResult? Function(MainEventOnPaused value)? onPaused,
    TResult? Function(MainEventOnStop value)? onStop,
    TResult? Function(MainEventOnResume value)? onResume,
    TResult? Function(MainEventOnTicked value)? onTicked,
    TResult? Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult? Function(MainEventCloseSnapshot value)? closeSnapshot,
  }) {
    return closeSnapshot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventOnStart value)? onStart,
    TResult Function(MainEventOnPaused value)? onPaused,
    TResult Function(MainEventOnStop value)? onStop,
    TResult Function(MainEventOnResume value)? onResume,
    TResult Function(MainEventOnTicked value)? onTicked,
    TResult Function(MainEventSnapshotSuccessful value)? snapshotSuccessful,
    TResult Function(MainEventCloseSnapshot value)? closeSnapshot,
    required TResult orElse(),
  }) {
    if (closeSnapshot != null) {
      return closeSnapshot(this);
    }
    return orElse();
  }
}

abstract class MainEventCloseSnapshot implements MainEvent {
  const factory MainEventCloseSnapshot() = _$MainEventCloseSnapshotImpl;
}
