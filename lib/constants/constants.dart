class TablingStrings {
  static const String orderDetail = '주문상세';
  static const String cancelOrder = '주문 취소하기';

  static const String all = '전체';
  static const String waiting = '대기';
  static const String order = '오더';
  static const String reservation = '예약';
  static const String takeout = '포장';

  static const String orderDate = '주문일시';
  static const String orderType = '주문유형';
  static const String orderMenu = '주문메뉴';
  static const String payAmount = '결제금액';

  static const String currencyFormat = '%s원';

  static const List<String> usageHistoryFilter = [
    TablingStrings.all,
    TablingStrings.waiting,
    TablingStrings.order,
    TablingStrings.reservation,
    TablingStrings.takeout,
  ];
}
