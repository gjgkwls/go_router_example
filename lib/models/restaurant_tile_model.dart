class RestaurantTileModel {
  String? classification;
  String? classification2;
  String? distance;
  bool? isNew;
  bool? isOnSiteOrder;
  bool? isQuickBooking;
  bool? isRemoteWaiting;
  bool? isTakeOut;
  String? latitude;
  String? longitude;
  double? rating;
  String? regDate;
  int? restaurantIdx;
  String? restaurantName;
  int? reviewCount;
  String? summaryAddress;

  // TakeoutOptionDto? takeOutOptions;
  // TimeSaleDto? timeSale;
  String? thumbnail;
  bool? useBooking;
  bool? useWaiting;
  bool? useWaitingQueue;
  int? waitingCount;

  RestaurantTileModel.fromJson(Map<String, dynamic> json) {
    classification = json['classification'] as String?;
    classification2 = json['classification2'] as String?;
    distance = json['distance'] as String?;
    isNew = json['isNew'] as bool?;
    isOnSiteOrder = json['isOnSiteOrder'] as bool?;
    isQuickBooking = json['isQuickBooking'] as bool?;
    isRemoteWaiting = json['isRemoteWaiting'] as bool?;
    isTakeOut = json['isTakeOut'] as bool?;
    latitude = json['latitude'] as String?;
    longitude = json['longitude'] as String?;
    rating = json['rating'] as double?;
    regDate = json['regDate'] as String?;
    restaurantIdx = json['restaurantIdx'] as int?;
    restaurantName = json['restaurantName'] as String?;
    reviewCount = json['reviewCount'] as int?;
    summaryAddress = json['summaryAddress'] as String?;
    // takeOutOptions = TakeoutOptionDto.fromJson(json['takeOutOptions']);
    // timeSale = TimeSaleDto.fromJson(json['timeSale']);
    thumbnail = json['thumbnail'] as String?;
    useBooking = json['useBooking'] as bool?;
    useWaiting = json['useWaiting'] as bool?;
    useWaitingQueue = json['useWaitingQueue'] as bool?;
    waitingCount = json['waitingCount'] as int?;
  }
}

class TakeoutOptionDto {
  int? expectedCookingTime;
  bool? useTakeOutDiscount;
  int? takeOutDiscountAppliedPrice;
  String? takeOutDiscountType;
  int? takeOutDiscountAmount;

  TakeoutOptionDto.fromJson(Map<String, dynamic> json)
      : expectedCookingTime = json['expectedCookingTime'],
        useTakeOutDiscount = json['useTakeOutDiscount'],
        takeOutDiscountAppliedPrice = json['takeOutDiscountAppliedPrice'],
        takeOutDiscountType = json['takeOutDiscountType'],
        takeOutDiscountAmount = json['takeOutDiscountAmount'];
}

class TimeSaleDto {
  int? dayOfWeek;
  String? startTime;
  String? endTime;
  String? type;
  int? amount;

  TimeSaleDto.fromJson(Map<String, dynamic> json)
      : dayOfWeek = json['dayOfWeek'],
        startTime = json['startTime'],
        endTime = json['endTime'],
        type = json['type'],
        amount = json['amount'];
}
