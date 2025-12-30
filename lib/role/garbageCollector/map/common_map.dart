import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_borla/role/garbageCollector/home/controller/driver_home_controller.dart';
import 'package:project_borla/role/garbageCollector/map/controller/gmap_controller.dart';


class CommonMap extends StatelessWidget {
  CommonMap({super.key,});

 // GMapController controller = Get.put(GMapController());
  DriverHomeController controller = Get.put(DriverHomeController());

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