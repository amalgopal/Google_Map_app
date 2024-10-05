import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ScreenGoogleMap extends StatefulWidget {
  const ScreenGoogleMap({super.key});

  @override
  State<ScreenGoogleMap> createState() => _ScreenGoogleMapState();
}

class _ScreenGoogleMapState extends State<ScreenGoogleMap> {
  static const googleplex = LatLng(37.4223, -122.0848);
  static const mountainView=LatLng(37.3861, -122.0838);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          GoogleMap(initialCameraPosition:
           CameraPosition(
            target: googleplex,
            zoom: 13,
            ),
            markers: {
              Marker(markerId: MarkerId('sourceLocation'),
              icon: BitmapDescriptor.defaultMarker,
              position: googleplex),
              Marker(markerId: MarkerId('destionationLocation'),
              icon: BitmapDescriptor.defaultMarker,
              position: mountainView),
              
            },
            ),
    );
  }
}
