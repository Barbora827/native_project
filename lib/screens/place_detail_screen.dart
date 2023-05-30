import 'package:flutter/material.dart';
import 'package:native_project/widgets/place.dart';
import 'package:native_project/widgets/text_widget.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(text: place.title),
      ),
      body: Stack(
        children: [
          Image.file(
            place.image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
          ),
        ],
      ),
    );
  }
}
