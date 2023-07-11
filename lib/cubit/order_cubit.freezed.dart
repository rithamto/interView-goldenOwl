// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartStateData {

 List<Shoes> get lstShoes => throw _privateConstructorUsedError; List<Shoes> get cart => throw _privateConstructorUsedError; double get total => throw _privateConstructorUsedError;







@JsonKey(ignore: true)
$CartStateDataCopyWith<CartStateData> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CartStateDataCopyWith<$Res>  {
  factory $CartStateDataCopyWith(CartStateData value, $Res Function(CartStateData) then) = _$CartStateDataCopyWithImpl<$Res, CartStateData>;
@useResult
$Res call({
 List<Shoes> lstShoes, List<Shoes> cart, double total
});



}

/// @nodoc
class _$CartStateDataCopyWithImpl<$Res,$Val extends CartStateData> implements $CartStateDataCopyWith<$Res> {
  _$CartStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? lstShoes = null,Object? cart = null,Object? total = null,}) {
  return _then(_value.copyWith(
lstShoes: null == lstShoes ? _value.lstShoes : lstShoes // ignore: cast_nullable_to_non_nullable
as List<Shoes>,cart: null == cart ? _value.cart : cart // ignore: cast_nullable_to_non_nullable
as List<Shoes>,total: null == total ? _value.total : total // ignore: cast_nullable_to_non_nullable
as double,
  )as $Val);
}

}


/// @nodoc
abstract class _$$_CartStateDataCopyWith<$Res> implements $CartStateDataCopyWith<$Res> {
  factory _$$_CartStateDataCopyWith(_$_CartStateData value, $Res Function(_$_CartStateData) then) = __$$_CartStateDataCopyWithImpl<$Res>;
@override @useResult
$Res call({
 List<Shoes> lstShoes, List<Shoes> cart, double total
});



}

/// @nodoc
class __$$_CartStateDataCopyWithImpl<$Res> extends _$CartStateDataCopyWithImpl<$Res, _$_CartStateData> implements _$$_CartStateDataCopyWith<$Res> {
  __$$_CartStateDataCopyWithImpl(_$_CartStateData _value, $Res Function(_$_CartStateData) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? lstShoes = null,Object? cart = null,Object? total = null,}) {
  return _then(_$_CartStateData(
lstShoes: null == lstShoes ? _value._lstShoes : lstShoes // ignore: cast_nullable_to_non_nullable
as List<Shoes>,cart: null == cart ? _value._cart : cart // ignore: cast_nullable_to_non_nullable
as List<Shoes>,total: null == total ? _value.total : total // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _$_CartStateData  implements _CartStateData {
  const _$_CartStateData({final  List<Shoes> lstShoes = const [], final  List<Shoes> cart = const [], this.total = 0}): _lstShoes = lstShoes,_cart = cart;

  

 final  List<Shoes> _lstShoes;
@override@JsonKey() List<Shoes> get lstShoes {
  if (_lstShoes is EqualUnmodifiableListView) return _lstShoes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lstShoes);
}

 final  List<Shoes> _cart;
@override@JsonKey() List<Shoes> get cart {
  if (_cart is EqualUnmodifiableListView) return _cart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cart);
}

@override@JsonKey() final  double total;

@override
String toString() {
  return 'CartStateData(lstShoes: $lstShoes, cart: $cart, total: $total)';
}


@override
bool operator ==(dynamic other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$_CartStateData&&const DeepCollectionEquality().equals(other._lstShoes, _lstShoes)&&const DeepCollectionEquality().equals(other._cart, _cart)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lstShoes),const DeepCollectionEquality().hash(_cart),total);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$_CartStateDataCopyWith<_$_CartStateData> get copyWith => __$$_CartStateDataCopyWithImpl<_$_CartStateData>(this, _$identity);








}


abstract class _CartStateData implements CartStateData {
  const factory _CartStateData({final  List<Shoes> lstShoes, final  List<Shoes> cart, final  double total}) = _$_CartStateData;
  

  

@override  List<Shoes> get lstShoes;@override  List<Shoes> get cart;@override  double get total;
@override @JsonKey(ignore: true)
_$$_CartStateDataCopyWith<_$_CartStateData> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
mixin _$CartState {

 CartStateData? get data => throw _privateConstructorUsedError;
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CartStateData? data)  initial,required TResult Function( CartStateData? data)  getList,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CartStateData? data)?  initial,TResult? Function( CartStateData? data)?  getList,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CartStateData? data)?  initial,TResult Function( CartStateData? data)?  getList,required TResult orElse(),}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( GetList value)  getList,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( GetList value)?  getList,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( GetList value)?  getList,required TResult orElse(),}) => throw _privateConstructorUsedError;

@JsonKey(ignore: true)
$CartStateCopyWith<CartState> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $CartStateCopyWith<$Res>  {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) = _$CartStateCopyWithImpl<$Res, CartState>;
@useResult
$Res call({
 CartStateData? data
});


$CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res,$Val extends CartState> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_value.copyWith(
data: freezed == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as CartStateData?,
  )as $Val);
}
@override
@pragma('vm:prefer-inline')
$CartStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
    return null;
  }

  return $CartStateDataCopyWith<$Res>(_value.data!, (value) {
    return _then(_value.copyWith(data: value) as $Val);
  });
}
}


/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) = __$$InitialCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CartStateData? data
});


@override $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res, _$Initial> implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_$Initial(
data: freezed == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as CartStateData?,
  ));
}


}

/// @nodoc


class _$Initial  implements Initial {
  const _$Initial({this.data});

  

@override final  CartStateData? data;

@override
String toString() {
  return 'CartState.initial(data: $data)';
}


@override
bool operator ==(dynamic other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$Initial&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$InitialCopyWith<_$Initial> get copyWith => __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CartStateData? data)  initial,required TResult Function( CartStateData? data)  getList,}) {
  return initial(data);
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CartStateData? data)?  initial,TResult? Function( CartStateData? data)?  getList,}) {
  return initial?.call(data);
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CartStateData? data)?  initial,TResult Function( CartStateData? data)?  getList,required TResult orElse(),}) {
  if (initial != null) {
    return initial(data);
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( GetList value)  getList,}) {
  return initial(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( GetList value)?  getList,}) {
  return initial?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( GetList value)?  getList,required TResult orElse(),}) {
  if (initial != null) {
    return initial(this);
  }
  return orElse();
}

}


abstract class Initial implements CartState {
  const factory Initial({final  CartStateData? data}) = _$Initial;
  

  

@override  CartStateData? get data;
@override @JsonKey(ignore: true)
_$$InitialCopyWith<_$Initial> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class _$$GetListCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$GetListCopyWith(_$GetList value, $Res Function(_$GetList) then) = __$$GetListCopyWithImpl<$Res>;
@override @useResult
$Res call({
 CartStateData? data
});


@override $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetListCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res, _$GetList> implements _$$GetListCopyWith<$Res> {
  __$$GetListCopyWithImpl(_$GetList _value, $Res Function(_$GetList) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_$GetList(
data: freezed == data ? _value.data : data // ignore: cast_nullable_to_non_nullable
as CartStateData?,
  ));
}


}

/// @nodoc


class _$GetList  implements GetList {
  const _$GetList({this.data});

  

@override final  CartStateData? data;

@override
String toString() {
  return 'CartState.getList(data: $data)';
}


@override
bool operator ==(dynamic other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$GetList&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$GetListCopyWith<_$GetList> get copyWith => __$$GetListCopyWithImpl<_$GetList>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CartStateData? data)  initial,required TResult Function( CartStateData? data)  getList,}) {
  return getList(data);
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CartStateData? data)?  initial,TResult? Function( CartStateData? data)?  getList,}) {
  return getList?.call(data);
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CartStateData? data)?  initial,TResult Function( CartStateData? data)?  getList,required TResult orElse(),}) {
  if (getList != null) {
    return getList(data);
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initial value)  initial,required TResult Function( GetList value)  getList,}) {
  return getList(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initial value)?  initial,TResult? Function( GetList value)?  getList,}) {
  return getList?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initial value)?  initial,TResult Function( GetList value)?  getList,required TResult orElse(),}) {
  if (getList != null) {
    return getList(this);
  }
  return orElse();
}

}


abstract class GetList implements CartState {
  const factory GetList({final  CartStateData? data}) = _$GetList;
  

  

@override  CartStateData? get data;
@override @JsonKey(ignore: true)
_$$GetListCopyWith<_$GetList> get copyWith => throw _privateConstructorUsedError;

}
