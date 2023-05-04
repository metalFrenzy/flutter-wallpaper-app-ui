import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scanner_app/widgets/trending_wallpaper_widget.dart';

import '../widgets/title_and_search_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleAndSearchBar(),
            const SizedBox(
              height: 20,
            ),
           TrendingWallpaper(),
          ],
        ),
      ),
    );
  }
}
