import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:native_project/providers/user_places_notifier.dart';
import 'package:native_project/widgets/places_list.dart';
import 'package:native_project/widgets/text_widget.dart';

import 'add_place_screen.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(text: 'Your places'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AddPlaceScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: PlacesList(places: userPlaces),
      ),
    );
  }
}
