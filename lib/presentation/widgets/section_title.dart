import 'package:flutter/material.dart';
import 'package:slash_app/utilities/screen_size_handler.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ScreenSizeHandler.smaller * 0.025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: ScreenSizeHandler.smaller * 0.055,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Text('See all',
                  style: TextStyle(
                    fontSize: ScreenSizeHandler.smaller * 0.04,
                  )),
              Padding(
                  padding:
                      EdgeInsets.all(ScreenSizeHandler.smaller * 0.025),
                  child: Container(
                    height: ScreenSizeHandler.bigger * 0.025,
                    width: ScreenSizeHandler.smaller * 0.045,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[200],
                    ),
                    child: Icon(Icons.arrow_forward_ios_rounded,
                        size: ScreenSizeHandler.smaller * 0.03,
                        color: Colors.black),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
