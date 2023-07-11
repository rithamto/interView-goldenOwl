part of 'order_cubit.dart';

@freezed
class CartStateData with _$CartStateData {
  const factory CartStateData({
      @Default([]) List<Shoes> lstShoes,
      @Default([]) List<Shoes> cart,
      @Default(0.0) double total,
    }) = _CartStateData;
}

@freezed
class CartState with _$CartState {
  const factory CartState.initial({
    CartStateData? data,
  }) = Initial;

  const factory CartState.getList({
    CartStateData? data,
  }) = GetList;
}
