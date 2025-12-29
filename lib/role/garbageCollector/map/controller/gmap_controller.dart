import 'dart:async';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMapController extends GetxController {
  static GMapController get instance => Get.put(GMapController());

  final Completer<GoogleMapController> _mapCompleter =
  Completer<GoogleMapController>();

  GoogleMapController? mapController;

  final Rx<LatLng> driverPosition =
      const LatLng(5.6037, -0.1870).obs;

  final Rx<ScreenCoordinate?> screenPosition =
  Rx<ScreenCoordinate?>(null);

  /// Map created callback
  void onMapCreated(GoogleMapController controller) {
    mapController = controller;

    if (!_mapCompleter.isCompleted) {
      _mapCompleter.complete(controller);
    }

    updateMarkerPosition();
  }

  /// Camera movement callback
  void onCameraMove() {
    updateMarkerPosition();
  }

  /// Safely update marker screen position
  Future<void> updateMarkerPosition() async {
    if (mapController == null) return;

    final pos = await mapController!
        .getScreenCoordinate(driverPosition.value);

    screenPosition.value = pos;
  }

  /// Update driver GPS location
  void updateDriverLocation(LatLng newPosition) {
    driverPosition.value = newPosition;
    updateMarkerPosition();
  }

  @override
  void onClose() {
    mapController?.dispose();
    super.onClose();
  }
}
