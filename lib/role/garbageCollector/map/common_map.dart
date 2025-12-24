import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../home/controller/driver_home_controller.dart';

class CommonMap extends StatelessWidget {
  const CommonMap({
    super.key,
    required this.controller,
  });

  final DriverHomeController controller;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: controller.driverPosition.value,
        zoom: 15,
      ),
      myLocationEnabled: false,
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      onMapCreated: controller.onMapCreated,
      onCameraMove: (_) => controller.onCameraMove(),
    );
  }
}