import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/models/items.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void loadHomeData() {
    final bestSelling = [
      Item(id: 1, name: "Best Seller 1", price: 29.99, image: "assets/images/best_seller_1.png"),
      Item(id: 2, name: "Best Seller 2", price: 49.99, image: "assets/images/best_seller_2.png"),
      Item(id: 3, name: "Best Seller 3", price: 19.99, image: "assets/images/best_seller_3.png"),
      Item(id: 4, name: "Best Seller 4", price: 39.99, image: "assets/images/best_seller_4.png"),
      Item(id: 5, name: "Best Seller 5", price: 24.99, image: "assets/images/best_seller_5.png"),
    ];

    final newArrival = [
      Item(id: 1, name: "New Arrival 1", price: 34.99, image: "assets/images/new_arrival_1.png"),
      Item(id: 2, name: "New Arrival 2", price: 54.99, image: "assets/images/new_arrival_2.png"),
      Item(id: 3, name: "New Arrival 3", price: 21.99, image: "assets/images/new_arrival_3.png"),
      Item(id: 4, name: "New Arrival 4", price: 42.99, image: "assets/images/new_arrival_4.png"),
      Item(id: 5, name: "New Arrival 5", price: 29.49, image: "assets/images/new_arrival_5.png"),
    ];

    final recommended = [
      Item(id: 1, name: "Recommended 1", price: 27.99, image: "assets/images/recommended_1.png"),
      Item(id: 2, name: "Recommended 2", price: 47.99, image: "assets/images/recommended_2.png"),
      Item(id: 3, name: "Recommended 3", price: 18.99, image: "assets/images/recommended_3.png"),
      Item(id: 4, name: "Recommended 4", price: 36.99, image: "assets/images/recommended_4.png"),
      Item(id: 5, name: "Recommended 5", price: 25.99, image: "assets/images/recommended_5.png"),
    ];
    
    final data = [bestSelling, newArrival, recommended];
    emit(HomeLoaded(data));
  }
}
