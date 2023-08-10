import 'package:flutter/material.dart';

import '../../models/main_page_type.dart';
import '../icons/common_icon.dart';

class MainBottomNavigationBar extends StatelessWidget {
  final MainPage currentPage;
  final ValueChanged<MainPage> onSelectPage;

  const MainBottomNavigationBar({
    Key? key,
    required this.currentPage,
    required this.onSelectPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Color(0xFFDFE3E6), width: 0.6),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          for (var page in MainPage.values)
            BottomNavigationBarItem(
              icon: HomeBottomNavigationBarItem(
                isSelected: currentPage == page,
                iconAssetName: page.iconAssetName,
                pageName: page.pageName,
              ),
              label: page.pageName,
            )
        ],
        onTap: (index) => onSelectPage(MainPage.values[index]),
      ),
    );
  }
}

class HomeBottomNavigationBarItem extends StatelessWidget {
  final bool isSelected;
  final String iconAssetName;
  final String pageName;

  const HomeBottomNavigationBarItem(
      {Key? key,
      required this.isSelected,
      required this.iconAssetName,
      required this.pageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonIcon.svg(
          iconAssetName,
          tint: isSelected ? const Color(0xFF2E3137) : null,
        ),
        Text(
          pageName,
          textAlign: TextAlign.center,
          style: TextStyle(
            color:
                isSelected ? const Color(0xFF2E3137) : const Color(0xFF969FAC),
            fontSize: 11.24,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
          ),
        )
      ],
    );
  }
}
