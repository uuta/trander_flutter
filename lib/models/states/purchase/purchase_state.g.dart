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
      offeringList: json['offeringList'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$_PurchaseStateToJson(_$_PurchaseState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'purchaseType': instance.purchaseType,
      'offerings': instance.offerings,
      'offeringList': instance.offeringList,
    };
