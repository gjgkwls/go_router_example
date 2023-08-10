import 'package:flutter/material.dart';

import '../icons/common_icon.dart';
import '../icons/dot.dart';
import '../images/tabling_error_image.dart';

class RestaurantTile extends StatelessWidget {
  final String thumbnailUrl;
  final String? saleTime;
  final String? discountAmount;
  final String restaurantName;
  final double rating;
  final int reviewCount;
  final String classification;
  final String summaryAddress;
  final String distance;
  final bool isQuickBooking;
  final bool isRemoteWaiting;
  final bool useWaiting;
  final bool useBooking;
  final bool isTakeOut;
  final bool isOnSiteOrder;
  final bool isNew;
  final bool useWaitingQueue;
  final int waitingCount;

  const RestaurantTile({
    super.key,
    String? thumbnailUrl,
    this.saleTime,
    this.discountAmount,
    String? restaurantName,
    double? rating,
    int? reviewCount,
    String? classification,
    String? summaryAddress,
    String? distance,
    bool? isQuickBooking,
    bool? isRemoteWaiting,
    bool? useWaiting,
    bool? useBooking,
    bool? isTakeOut,
    bool? isOnSiteOrder,
    bool? isNew,
    bool? useWaitingQueue,
    int? waitingCount,
  })  : thumbnailUrl = thumbnailUrl ?? "",
        restaurantName = restaurantName ?? "",
        rating = rating ?? 0.0,
        reviewCount = reviewCount ?? 0,
        classification = classification ?? "",
        summaryAddress = summaryAddress ?? "",
        isQuickBooking = isQuickBooking ?? false,
        isRemoteWaiting = isRemoteWaiting ?? false,
        useWaiting = useWaiting ?? false,
        useBooking = useBooking ?? false,
        isTakeOut = isTakeOut ?? false,
        isOnSiteOrder = isOnSiteOrder ?? false,
        isNew = isNew ?? false,
        useWaitingQueue = useWaitingQueue ?? false,
        waitingCount = waitingCount ?? 0,
        distance = distance ?? '0km';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RestaurantTileThumbnail(url: thumbnailUrl),
          const SizedBox(width: 12),
          RestaurantTileBody(
            saleTime: saleTime,
            discountAmount: discountAmount,
            restaurantName: restaurantName,
            rating: rating,
            reviewCount: reviewCount,
            classification: classification,
            summaryAddress: summaryAddress,
            isQuickBooking: isQuickBooking,
            isRemoteWaiting: isRemoteWaiting,
            useWaiting: useWaiting,
            useBooking: useBooking,
            isTakeOut: isTakeOut,
            isOnSiteOrder: isOnSiteOrder,
            isNew: isNew,
            useWaitingQueue: useWaitingQueue,
            waitingCount: waitingCount,
            distance: distance,
          ),
        ],
      ),
    );
  }
}

class RestaurantTileThumbnail extends StatelessWidget {
  final String url;

  const RestaurantTileThumbnail({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 88,
        height: 100,
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(width: 1, color: Colors.black.withOpacity(0.08)),
          ),
          child: Image.network(
            url,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) =>
                const TablingErrorImage(),
          ),
        ));
  }
}

class RestaurantTileBody extends StatelessWidget {
  final String restaurantName;
  final String? saleTime;
  final String? discountAmount;
  final String classification;
  final double rating;
  final int reviewCount;
  final String summaryAddress;
  final bool isQuickBooking;
  final bool isRemoteWaiting;
  final bool useWaiting;
  final bool useBooking;
  final bool isTakeOut;
  final bool isOnSiteOrder;
  final bool isNew;
  final bool useWaitingQueue;
  final int waitingCount;
  final String distance;

  const RestaurantTileBody({
    super.key,
    String? restaurantName,
    this.saleTime,
    this.discountAmount,
    double? rating,
    int? reviewCount,
    String? classification,
    String? summaryAddress,
    bool? isQuickBooking,
    bool? isRemoteWaiting,
    bool? useWaiting,
    bool? useBooking,
    bool? isTakeOut,
    bool? isOnSiteOrder,
    bool? isNew,
    bool? useWaitingQueue,
    int? waitingCount,
    String? distance,
  })  : restaurantName = restaurantName ?? "",
        rating = rating ?? 0.0,
        reviewCount = reviewCount ?? 0,
        classification = classification ?? "",
        summaryAddress = summaryAddress ?? "",
        isQuickBooking = isQuickBooking ?? false,
        isRemoteWaiting = isRemoteWaiting ?? false,
        useWaiting = useWaiting ?? false,
        useBooking = useBooking ?? false,
        isTakeOut = isTakeOut ?? false,
        isOnSiteOrder = isOnSiteOrder ?? false,
        isNew = isNew ?? false,
        useWaitingQueue = useWaitingQueue ?? false,
        waitingCount = waitingCount ?? 0,
        distance = distance ?? '0km';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 3,
            children: [
              if (saleTime != null)
                TimeSaleTime(
                  saleTime: saleTime!,
                ),
              if (discountAmount != null)
                DiscountAmount(
                  discountAmount: discountAmount!,
                ),
            ],
          ),
          if (saleTime != null || discountAmount != null)
            const SizedBox(height: 8),
          RestaurantTileName(restaurantName: restaurantName),
          const SizedBox(height: 4),
          Row(
            children: [
              const CommonIcon.svg('storelist_star_active.svg'),
              const SizedBox(width: 3),
              Text(
                rating.toStringAsFixed(1),
                style: const TextStyle(
                  color: Color(0xFF131517),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 2),
              Text(
                reviewCount > 999 ? '(+999)' : '($reviewCount)',
                style: const TextStyle(
                  color: Color(0xFF131517),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.10,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                classification,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xFF96A0AC),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Dot(),
              Text(
                summaryAddress,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xFF96A0AC),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Dot(),
              Text(
                distance,
                style: const TextStyle(
                  color: Color(0xFF96A0AC),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 4,
            children: [
              for (var icon in [
                if (useBooking) KeyServiceTagType.reservation,
                if (isRemoteWaiting) KeyServiceTagType.remoteWaiting,
                if (isOnSiteOrder) KeyServiceTagType.onsiteOrder,
                if (isTakeOut) KeyServiceTagType.takeout,
              ])
                CommonIcon.svg(icon.assetName),
            ],
          ),
        ],
      ),
    );
  }
}

class TimeSaleTime extends StatelessWidget {
  final String saleTime;

  const TimeSaleTime({super.key, required this.saleTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFF7474), Color(0xFFFF72A5)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CommonIcon.svg('timesale.svg'),
          const SizedBox(width: 2),
          Text(
            saleTime,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}

class DiscountAmount extends StatelessWidget {
  final String discountAmount;

  const DiscountAmount({super.key, required this.discountAmount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 3, left: 6, right: 4, bottom: 3),
      decoration: ShapeDecoration(
        color: const Color(0xFFFFF8FA),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.30, color: Color(0xFFFF8BAA)),
          borderRadius: BorderRadius.circular(3),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            discountAmount,
            style: const TextStyle(
              color: Color(0xFFE51854),
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(width: 2),
          const Text(
            '할인',
            style: TextStyle(
              color: Color(0xFFE51854),
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class RestaurantTileName extends StatelessWidget {
  final String restaurantName;

  const RestaurantTileName({super.key, required this.restaurantName});

  @override
  Widget build(BuildContext context) {
    return Text(
      restaurantName,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
          color: Color(0xFF131517),
          fontWeight: FontWeight.w500,
          fontSize: 17,
          height: 1),
    );
  }
}

enum KeyServiceTagType {
  remoteWaiting(assetName: 'tag_waiting.svg'),
  takeout(assetName: 'tag_takeout.svg'),
  reservation(assetName: 'tag_reservation.svg'),
  onsiteOrder(assetName: 'tag_order.svg');

  const KeyServiceTagType({required this.assetName});

  final String assetName;
}
