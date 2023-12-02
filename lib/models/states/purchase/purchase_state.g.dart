// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseStateImpl _$$PurchaseStateImplFromJson(Map<String, dynamic> json) =>
    _$PurchaseStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      purchaseType: json['purchaseType'] as int? ?? 1,
      offerings: json['offerings'] == null
          ? null
          : Offerings.fromJson(json['offerings'] as Map<String, dynamic>),
      offeringList: json['offeringList'] as List<dynamic>? ?? const [],
      currencySign: json['currencySign'] as String? ?? '',
      isActive: json['isActive'] as bool? ?? false,
      errorMessage: json['errorMessage'] as String? ?? '',
    );

Map<String, dynamic> _$$PurchaseStateImplToJson(_$PurchaseStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'purchaseType': instance.purchaseType,
      'offerings': instance.offerings,
      'offeringList': instance.offeringList,
      'currencySign': instance.currencySign,
      'isActive': instance.isActive,
      'errorMessage': instance.errorMessage,
    };
