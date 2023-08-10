enum RestaurantStatus {
  SEAT("착석중"),
  WAITING("대기중"),
  FINISH("이용완료"),
  CANCEL("취소"),
  NOSHOW("노쇼");

  const RestaurantStatus(this.name);
  final String name;
}
