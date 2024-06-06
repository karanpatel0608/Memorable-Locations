import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:favorite_places/models/place.dart';
import 'dart:io';
class UserPlacesNotifier extends StateNotifier<List<Place>> {
  // We are extending the StateNotifier class and passing a list of places as the type argument
  //super() is used to call the constructor of the parent class
  // here parent class is StateNotifier<List<Place>> and we are passing an empty list of places to the constructor
  UserPlacesNotifier() : super([]); //initial value is an empty list of places

  void addPlace(String title, File image ) {
    final newPlace = Place(title: title, image: image );
    state = [newPlace, ...state];
  }
}

final userPlacesProvider = StateNotifierProvider<UserPlacesNotifier, List<Place>>(
  (ref) => UserPlacesNotifier(),
);
