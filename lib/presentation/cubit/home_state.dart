part of 'home_cubit.dart'; 

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoaded extends HomeState {
  final List<List<Item>> data; 

  HomeLoaded(this.data);

  @override
  List<Object> get props => [data];
}

