import 'package:flutter/material.dart';
import 'package:favorite_places/models/place.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.place});
  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text(place.title, ),
        // actions: [],
      ),
      body: Stack(
       children: [
        Image.file(
          place.image,
          fit: BoxFit.cover, 
          width: double.infinity,

        )
       ], 
      )
    );
  }
}
