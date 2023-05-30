import 'package:flutter/material.dart';
import 'package:native_project/screens/place_detail_screen.dart';
import 'package:native_project/widgets/place.dart';
import 'package:native_project/widgets/text_widget.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return const Center(
        child: TextWidget(text: 'No places added yet'),
      );
    }

    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) => ListTile(
        leading: CircleAvatar(
          radius: 26,
          backgroundImage: FileImage(places[index].image),
        ),
        title: TextWidget(
          text: places[index].title,
          align: TextAlign.start,
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PlaceDetailScreen(
                place: places[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
