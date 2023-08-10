enum UsageHistoryTabType {
  expected("예정"),
  complete('완료'),
  cancel("취소");

  const UsageHistoryTabType(this.name);
  final String name;
}
