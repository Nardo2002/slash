import 'package:flutter/material.dart';
import 'package:slash_app/utilities/screen_size_handler.dart';

class SearchingBar extends StatelessWidget {
  final double? smaller;
  const SearchingBar({super.key, this.smaller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: smaller == null ? EdgeInsets.all(ScreenSizeHandler.smaller* 0.025):EdgeInsets.all(ScreenSizeHandler.smaller* 0.025*smaller!) ,
      child: Container(
        height: ScreenSizeHandler.bigger* 0.073,
        child: TextField(
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: 'Search here..',
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
