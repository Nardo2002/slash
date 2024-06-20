import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../data/models/items.dart';
import 'section_title.dart';
import '../../utilities/screen_size_handler.dart';

class Section extends StatelessWidget {
  final String title;
  final List<Item> items;

  const Section({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: title),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: items.map((item) {
              return Padding(
                padding: EdgeInsets.all(ScreenSizeHandler.smaller * 0.025),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: ScreenSizeHandler.smaller * 0.32,
                          height: ScreenSizeHandler.bigger * 0.18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage(item.image),
                              fit: BoxFit
                                  .cover, 
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: ScreenSizeHandler.smaller * 0.05,
                                backgroundColor: Colors.white.withOpacity(
                                    0.5), 
                                child: IconButton(
                                  icon: Icon(
                                    size: ScreenSizeHandler.smaller * 0.05,
                                    Icons.favorite_border,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(item.name),
                    Row(
                      children: [
                        Text(
                          'EGP ${item.price.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: ScreenSizeHandler.smaller * 0.026),
                          child: CircleAvatar(
                            backgroundImage: const AssetImage(
                                "assets/images/crochet_avatar.png"),
                            radius: ScreenSizeHandler.smaller * 0.02,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: ScreenSizeHandler.smaller * 0.015),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: ScreenSizeHandler.smaller * 0.02,
                            child: Icon(
                              Icons.add,
                              size: ScreenSizeHandler.smaller * 0.03,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
