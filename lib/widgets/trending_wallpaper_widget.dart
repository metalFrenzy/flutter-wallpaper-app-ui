import 'package:flutter/material.dart';

class TrendingWallpaper extends StatelessWidget {
  const TrendingWallpaper({super.key});

  Widget WallpapersCard(image) {
    return AspectRatio(
      aspectRatio: 2.5 / 3,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 60, 59, 59),
              blurRadius: 5.0,
              offset: Offset(0, 5),
            ),
            BoxShadow(
              color: Colors.transparent,
              blurRadius: 5.0,
              offset: Offset(-5, 0),
            ),
            BoxShadow(
              color: Colors.transparent,
              offset: Offset(5, 0),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trending Wallpapers',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                WallpapersCard('assets/images/image2.jpg'),
                WallpapersCard('assets/images/last.jpg'),
                WallpapersCard('assets/images/image1.jpg'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 170,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 60, 59, 59),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
                BoxShadow(
                  color: Colors.transparent,
                  blurRadius: 5.0,
                  offset: Offset(-5, 0),
                ),
                BoxShadow(
                  color: Colors.transparent,
                  offset: Offset(5, 0),
                )
              ],
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/coffee.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Best Wallpapers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
