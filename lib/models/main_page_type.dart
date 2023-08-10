enum MainPage {
  home(
    iconAssetName: 'home_tap_bar_home_nor.svg',
    pageName: '홈',
  ),
  search(
    iconAssetName: 'home_tap_bar_search_nor.svg',
    pageName: '검색',
  ),
  interest(
    iconAssetName: 'home_tap_bar_more_nor.svg',
    pageName: '관심매장',
  ),
  myInfo(
    iconAssetName: 'home_tap_bar_myinfo_nor.svg',
    pageName: '내정보',
  );

  const MainPage({required this.iconAssetName, required this.pageName});

  final String iconAssetName;
  final String pageName;
}
