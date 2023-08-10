import 'package:flutter/material.dart';

import '../models/main_page_type.dart';
import '../widgets/labels/icon_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconText(
          iconName: MainPage.home.iconAssetName,
          spacing: 20,
          iconPosition: IconPosition.top,
          label: '홈',
        ),
      ),
    );
  }
}
