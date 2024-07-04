import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController {
  GoogleMapController? googleMapController;
  final LatLng initialMapCenter = const LatLng(37.7749, -122.4194);
  final double initialZoom = 14.0;

  void onMapCreated(GoogleMapController controller) {
    googleMapController = controller;
  }
}
