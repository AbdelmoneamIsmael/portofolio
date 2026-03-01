// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainState()';
}


}

/// @nodoc
class $MainStateCopyWith<$Res>  {
$MainStateCopyWith(MainState _, $Res Function(MainState) __);
}


/// Adds pattern-matching-related methods to [MainState].
extension MainStatePatterns on MainState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( Scrolled value)?  scrolled,TResult Function( ActiveSectionChanged value)?  activeSectionChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Scrolled() when scrolled != null:
return scrolled(_that);case ActiveSectionChanged() when activeSectionChanged != null:
return activeSectionChanged(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( Scrolled value)  scrolled,required TResult Function( ActiveSectionChanged value)  activeSectionChanged,}){
final _that = this;
switch (_that) {
case Initial():
return initial(_that);case Scrolled():
return scrolled(_that);case ActiveSectionChanged():
return activeSectionChanged(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( Scrolled value)?  scrolled,TResult? Function( ActiveSectionChanged value)?  activeSectionChanged,}){
final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial(_that);case Scrolled() when scrolled != null:
return scrolled(_that);case ActiveSectionChanged() when activeSectionChanged != null:
return activeSectionChanged(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool isScrolled)?  scrolled,TResult Function( String section)?  activeSectionChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Scrolled() when scrolled != null:
return scrolled(_that.isScrolled);case ActiveSectionChanged() when activeSectionChanged != null:
return activeSectionChanged(_that.section);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool isScrolled)  scrolled,required TResult Function( String section)  activeSectionChanged,}) {final _that = this;
switch (_that) {
case Initial():
return initial();case Scrolled():
return scrolled(_that.isScrolled);case ActiveSectionChanged():
return activeSectionChanged(_that.section);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool isScrolled)?  scrolled,TResult? Function( String section)?  activeSectionChanged,}) {final _that = this;
switch (_that) {
case Initial() when initial != null:
return initial();case Scrolled() when scrolled != null:
return scrolled(_that.isScrolled);case ActiveSectionChanged() when activeSectionChanged != null:
return activeSectionChanged(_that.section);case _:
  return null;

}
}

}

/// @nodoc


class Initial implements MainState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainState.initial()';
}


}




/// @nodoc


class Scrolled implements MainState {
  const Scrolled(this.isScrolled);
  

 final  bool isScrolled;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScrolledCopyWith<Scrolled> get copyWith => _$ScrolledCopyWithImpl<Scrolled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Scrolled&&(identical(other.isScrolled, isScrolled) || other.isScrolled == isScrolled));
}


@override
int get hashCode => Object.hash(runtimeType,isScrolled);

@override
String toString() {
  return 'MainState.scrolled(isScrolled: $isScrolled)';
}


}

/// @nodoc
abstract mixin class $ScrolledCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory $ScrolledCopyWith(Scrolled value, $Res Function(Scrolled) _then) = _$ScrolledCopyWithImpl;
@useResult
$Res call({
 bool isScrolled
});




}
/// @nodoc
class _$ScrolledCopyWithImpl<$Res>
    implements $ScrolledCopyWith<$Res> {
  _$ScrolledCopyWithImpl(this._self, this._then);

  final Scrolled _self;
  final $Res Function(Scrolled) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isScrolled = null,}) {
  return _then(Scrolled(
null == isScrolled ? _self.isScrolled : isScrolled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ActiveSectionChanged implements MainState {
  const ActiveSectionChanged(this.section);
  

 final  String section;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActiveSectionChangedCopyWith<ActiveSectionChanged> get copyWith => _$ActiveSectionChangedCopyWithImpl<ActiveSectionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActiveSectionChanged&&(identical(other.section, section) || other.section == section));
}


@override
int get hashCode => Object.hash(runtimeType,section);

@override
String toString() {
  return 'MainState.activeSectionChanged(section: $section)';
}


}

/// @nodoc
abstract mixin class $ActiveSectionChangedCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory $ActiveSectionChangedCopyWith(ActiveSectionChanged value, $Res Function(ActiveSectionChanged) _then) = _$ActiveSectionChangedCopyWithImpl;
@useResult
$Res call({
 String section
});




}
/// @nodoc
class _$ActiveSectionChangedCopyWithImpl<$Res>
    implements $ActiveSectionChangedCopyWith<$Res> {
  _$ActiveSectionChangedCopyWithImpl(this._self, this._then);

  final ActiveSectionChanged _self;
  final $Res Function(ActiveSectionChanged) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? section = null,}) {
  return _then(ActiveSectionChanged(
null == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
