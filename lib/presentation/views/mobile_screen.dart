import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/home_cubit.dart';
import '../widgets/banner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/category_item.dart';
import '../widgets/section_title.dart';
import '../widgets/search_bar.dart';
import '../widgets/section.dart';
import '../../utilities/screen_size_handler.dart';

class MobileScreen extends StatefulWidget    {
  const MobileScreen({super.key});

 @override
  State<MobileScreen> createState() => _MobileScreenState();
}
class _MobileScreenState extends State<MobileScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Slash.', style: TextStyle(fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ScreenSizeHandler.smaller * 0.1),
              child: Row(
                children: [
                  const Icon(Icons.location_on),
                  Padding(
                    padding: EdgeInsets.all(
                        ScreenSizeHandler.smaller * 0.02),
                    child: Column(
                      children: [
                        Text('Nasr City',
                            style: TextStyle(
                                fontSize:
                                    ScreenSizeHandler.smaller * 0.045)),
                        Text(
                          'Cairo',
                          style: TextStyle(
                              fontSize:
                                  ScreenSizeHandler.smaller * 0.045,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down)
                ],
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: ScreenSizeHandler.smaller * 0.025),
            child: const Icon(Icons.notifications_none_rounded),
          ),
        ],
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeInitial) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is HomeLoaded) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SearchingBar(),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        BannerPhoto(imagePath: 'assets/images/banner_1.png'),
                        BannerPhoto(imagePath: 'assets/images/banner_2.png'),
                        BannerPhoto(imagePath: 'assets/images/banner_3.png'),
                      ],
                    ),
                  ),
                  const SectionTitle(title: 'Categories'),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryItem(
                            name: 'Fashion', icon: FontAwesomeIcons.shirt),
                        CategoryItem(
                            name: 'Games', icon: FontAwesomeIcons.dice),
                        CategoryItem(
                            name: 'Accessories',
                            icon: FontAwesomeIcons.glasses),
                        CategoryItem(
                            name: 'Books', icon: FontAwesomeIcons.book),
                        CategoryItem(
                            name: 'Artifacts', icon: FontAwesomeIcons.palette),
                        CategoryItem(
                            name: 'Pets Care', icon: FontAwesomeIcons.dog),
                      ],
                    ),
                  ),
                  Section(title: 'Best Selling', items: state.data.first),
                  Section(title: 'New Arrival', items: state.data.elementAt(1)),
                  Section(
                      title: 'Recommended for you',
                      items: state.data.elementAt(2)),
                ],
              ),
            );
          }
          return Container();
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: (value){
          setState(() {
          selectedIndex = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'My Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
