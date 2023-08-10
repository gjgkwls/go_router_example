import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/restaurant_tile_model.dart';
import '../widgets/list_tile/restaurant_tile.dart';

class InterestRestaurantsScreen extends StatefulWidget {
  const InterestRestaurantsScreen({Key? key}) : super(key: key);

  @override
  State<InterestRestaurantsScreen> createState() =>
      _InterestRestaurantsScreenState();
}

class _InterestRestaurantsScreenState extends State<InterestRestaurantsScreen> {
  late Future<List<RestaurantTileModel>> restaurants;

  @override
  void initState() {
    super.initState();
    restaurants = getInterestRestaurantDto();
  }

  static Future<List<RestaurantTileModel>> getInterestRestaurantDto() async {
    String jsonString = await rootBundle.loadString(
        'packages/tabling_ui/assets/jsons/interest_restaurants_screen_response_sample.json');

    List<dynamic> restaurants = jsonDecode(jsonString);
    return restaurants.map((e) => RestaurantTileModel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
                toolbarHeight: 48,
                pinned: true,
                title: Text(
                  '관심 매장',
                  style: TextStyle(
                    color: Color(0xFF131517),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                )),
            FutureBuilder(
              future: restaurants,
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  );
                } else if (snapshot.data?.isEmpty ?? true) {
                  return const SliverFillRemaining(
                    child: Center(child: Text('데이터 없음')),
                  );
                }
                return SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    var data = snapshot.data![index];
                    return RestaurantTile(
                      thumbnailUrl: data.thumbnail,
                      restaurantName: data.restaurantName,
                      classification: data.classification,
                      rating: data.rating,
                      reviewCount: data.reviewCount,
                      summaryAddress: data.summaryAddress,
                      isQuickBooking: data.isQuickBooking,
                      isRemoteWaiting: data.isRemoteWaiting,
                      useWaiting: data.useWaiting,
                      useBooking: data.useBooking,
                      isTakeOut: data.isTakeOut,
                      isOnSiteOrder: data.isOnSiteOrder,
                      isNew: data.isNew,
                      useWaitingQueue: data.useWaitingQueue,
                      waitingCount: data.waitingCount,
                      distance: data.distance,
                    );
                  }, childCount: snapshot.data?.length ?? 1),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
