import 'package:flutter/material.dart';
import 'package:slash_app/utilities/screen_size_handler.dart';

class BannerPhoto extends StatelessWidget {
  const BannerPhoto({
    super.key,
    required this.imagePath,
    this.smaller,
  });

  final String imagePath;
  final double? smaller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: smaller == null ? EdgeInsets.all(ScreenSizeHandler.smaller * 0.025): EdgeInsets.all(ScreenSizeHandler.smaller * 0.025* smaller!) ,
      child: Container(
        height: smaller == null ? ScreenSizeHandler.bigger * 0.19 : ScreenSizeHandler.bigger * 0.19 * smaller! ,
        width: smaller == null ? ScreenSizeHandler.smaller* 0.88 : ScreenSizeHandler.smaller* 0.88 * smaller!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
