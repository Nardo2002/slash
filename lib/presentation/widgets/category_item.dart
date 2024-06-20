import 'package:flutter/material.dart';
import '../../utilities/screen_size_handler.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final double? smaller;

  const CategoryItem({required this.name, required this.icon, this.smaller, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: smaller == null ? EdgeInsets.all(ScreenSizeHandler.smaller * 0.011): EdgeInsets.all(ScreenSizeHandler.smaller * 0.011 * smaller!),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[800],
            radius: smaller == null ? ScreenSizeHandler.smaller * 0.093 : ScreenSizeHandler.smaller * 0.093 * smaller!,
            child: Center(child: Icon(icon, color: Colors.white)),
          ),
          Text(name, style: TextStyle(fontSize: smaller == null ? ScreenSizeHandler.smaller* 0.03 :ScreenSizeHandler.smaller* 0.03 * smaller!)),
        ],
      ),
    );
  }
}