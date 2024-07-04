// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:flutter_google_places/flutter_google_places.dart';
// import 'package:geocoding/geocoding.dart';
//
//
// import '../controller/googlecontroller.dart'; // Replace with your actual controller path
//
// class MapScreen extends StatelessWidget {
//   final MapController _mapController = Get.put(MapController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Google Map'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () async {
//               Prediction? prediction = await PlacesAutocomplete.show(
//                 context: context,
//                 apiKey: 'YOUR_API_KEY_HERE',
//                 language: 'en',
//                 mode: Mode.overlay, // Mode.fullscreen
//               );
//               if (prediction != null) {
//                 // Get detailed place info using the placeId
//                 PlacesDetailsResponse place =
//                 await PlacesDetailsResponse.get(
//                     prediction.placeId!);
//                 // Extract the coordinates (latitude and longitude)
//                 final double lat =
//                     place.result.geometry!.location.lat;
//                 final double lng =
//                     place.result.geometry!.location.lng;
//                 // Move camera to the selected location
//                 _mapController.googleMapController!.animateCamera(
//                   CameraUpdate.newLatLng(
//                     LatLng(lat, lng),
//                   ),
//                 );
//               }
//             },
//           ),
//         ],
//       ),
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: _mapController.initialMapCenter,
//           zoom: _mapController.initialZoom,
//         ),
//         onMapCreated: _mapController.onMapCreated,
//         mapType: MapType.normal,
//         myLocationEnabled: true,
//         zoomControlsEnabled: true,
//       ),
//     );
//   }
// }
