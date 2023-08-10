import 'package:flutter/widgets.dart';

class MypageHistoryModel {
  final int idx;
  final int restaurantIdx;
  final String restaurantName;
  final String restaurantAddr;
  final String restaurantTel;
  final List<String> restaurantImages;
  final String? regDate;
  final String? reservationDate;
  final String status;
  final String? reviewId;
  final bool isWriteReviewActive;
  final bool isWaitingQueue;
  final String? waitingQueueName;
  final int waitSequenceStatic;
  final int waitingOrder;
  final int numOfPeople;
  final int childCount;
  final bool isCheckIn;
  final int price;
  final bool isDepositRefund;
  final bool hasOrder;
  final String? canceller;
  final String? cancelReason;
  final String? orderStatus;
  final String? orderCanceller;
  final String? orderCancelReason;
  final bool isReorder;
  final bool isAdditionalOrder;
  final String type;
  final String menuNames;

  MypageHistoryModel.fromJson(Map<String, dynamic> json)
      : idx = json['idx'],
        restaurantIdx = json['restaurantIdx'],
        restaurantName = json['restaurantName'],
        restaurantAddr = json['restaurantAddr'],
        restaurantTel = json['restaurantTel'],
        restaurantImages = List<String>.from(json['restaurantImages']),
        regDate = json['regDate'],
        reservationDate = json['reservationDate'],
        status = json['status'],
        reviewId = json['reviewId'],
        isWriteReviewActive = json['isWrtieReviewActive'],
        isWaitingQueue = json['isWaitingQueue'],
        waitingQueueName = json['waitingQueueName'],
        waitSequenceStatic = json['waitSequenceStatic'],
        waitingOrder = json['waitingOrder'],
        numOfPeople = json['numOfPeople'],
        childCount = json['childCount'],
        isCheckIn = json['isCheckIn'],
        price = json['price'],
        isDepositRefund = json['isDepositRefund'],
        hasOrder = json['hasOrder'],
        canceller = json['canceller'],
        cancelReason = json['cancelReason'],
        orderStatus = json['orderStatus'],
        orderCanceller = json['orderCanceller'],
        orderCancelReason = json['orderCancelReason'],
        isReorder = json['isReorder'],
        isAdditionalOrder = json['isAdditionalOrder'],
        type = json['type'],
        menuNames = json['menuNames'];
}

// TODO: 그냥 .. CardDetail 말고 공통으로 하나 빼서 같이 쓰면 안될까?
@immutable
class PairInfo {
  final String key;
  final dynamic value;

  const PairInfo(this.key, this.value);
}
