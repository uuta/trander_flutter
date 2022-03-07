// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseState _$$_PurchaseStateFromJson(Map<String, dynamic> json) =>
    _$_PurchaseState(
      isLoading: json['isLoading'] as bool? ?? false,
      purchaseType: json['purchaseType'] as int? ?? 1,
      offerings: json['offerings'] == null
          ? null
          : Offerings.fromJson(json['offerings'] as Map<String, dynamic>),
      monthlyPrice: (json['monthlyPrice'] as num?)?.toDouble() ?? 0,
      yearOfMonthlyPrice: (json['yearOfMonthlyPrice'] as num?)?.toDouble() ?? 0,
      offPercent: (json['offPercent'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_PurchaseStateToJson(_$_PurchaseState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'purchaseType': instance.purchaseType,
      'offerings': instance.offerings,
      'monthlyPrice': instance.monthlyPrice,
      'yearOfMonthlyPrice': instance.yearOfMonthlyPrice,
      'offPercent': instance.offPercent,
    };
