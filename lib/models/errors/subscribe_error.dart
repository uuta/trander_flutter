import '/import.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

enum SubscribeErrorCode {
  canceled,
  notAllowed,
  alreadyPurchased,
  receiptAlreadyInUse,
  invalidPurchase,
  noReceipt,
  appStoreError,
  paymentPendingError,
  unexpectedRCError,
  syncFailedToMyBackend,
}

// Reference: https://zenn.dev/moga/books/flutter_revenuecat/viewer/6-coding-2
class SubscribeError implements Exception {
  SubscribeError(this.code, {String? message, this.additionalErrorCode})
      : _message = message;
  final SubscribeErrorCode code;
  final String? _message;
  final String? additionalErrorCode;

  String? get message {
    if (_message != null) return _message;

    switch (code) {
      case SubscribeErrorCode.canceled:
        return 'Your purchase has been canceled.';
      case SubscribeErrorCode.appStoreError:
        return 'An error has occurred in ${Platform.isIOS ? 'AppStore' : 'GooglePlayStore'}. Please wait some time and try again.';
      case SubscribeErrorCode.notAllowed:
        return 'Your AppleID is not authorized to make purchases.';
      case SubscribeErrorCode.alreadyPurchased:
        return 'This product has already been purchased. Please try the restoration.';
      case SubscribeErrorCode.receiptAlreadyInUse:
        return 'Purchase information is being used by another user. Please log in to a different account.';
      case SubscribeErrorCode.invalidPurchase:
        return 'Purchase information is invalid.';
      case SubscribeErrorCode.noReceipt:
        return 'Purchase information does not exist.';
      case SubscribeErrorCode.unexpectedRCError:
        return 'An unexpected error has occurred. Please take a screenshot and contact us. [${additionalErrorCode ?? 'none'}]';
      case SubscribeErrorCode.paymentPendingError:
        return 'Approval is required for purchase. Please check with the person who manages this device.';
      case SubscribeErrorCode.syncFailedToMyBackend:
        return 'Synchronization of purchase information failed. Please contact us using the contact us form.';
    }
  }
}

SubscribeError convertPurchasesError(PurchasesErrorCode code,
    {String? additionalCode}) {
  switch (code) {
    case PurchasesErrorCode.purchaseCancelledError:
      return SubscribeError(SubscribeErrorCode.canceled);
    case PurchasesErrorCode.storeProblemError:
      return SubscribeError(SubscribeErrorCode.appStoreError);
    case PurchasesErrorCode.purchaseNotAllowedError:
      return SubscribeError(SubscribeErrorCode.notAllowed);
    case PurchasesErrorCode.productAlreadyPurchasedError:
      return SubscribeError(SubscribeErrorCode.alreadyPurchased);
    case PurchasesErrorCode.receiptAlreadyInUseError:
    case PurchasesErrorCode.receiptInUseByOtherSubscriberError:
      return SubscribeError(SubscribeErrorCode.receiptAlreadyInUse);
    case PurchasesErrorCode.missingReceiptFileError:
      return SubscribeError(SubscribeErrorCode.noReceipt);
    case PurchasesErrorCode.invalidAppleSubscriptionKeyError:
    case PurchasesErrorCode.invalidAppUserIdError:
    case PurchasesErrorCode.invalidCredentialsError:
    case PurchasesErrorCode.invalidReceiptError:
      return SubscribeError(SubscribeErrorCode.invalidPurchase);
    case PurchasesErrorCode.paymentPendingError:
      return SubscribeError(SubscribeErrorCode.paymentPendingError);
    default:
      return SubscribeError(SubscribeErrorCode.unexpectedRCError,
          additionalErrorCode: 'RC$additionalCode');
  }
}
