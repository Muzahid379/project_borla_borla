import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserGradientScaffold extends StatelessWidget {
  final Color gradientOne;
  final Widget child;
  final AppBar? appBar;

  const UserGradientScaffold({
    super.key,
    this.gradientOne = const Color(0xFFFFF6DE),
    required this.child,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark, // Android
        statusBarBrightness: Brightness.light, // iOS
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: appBar,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                gradientOne,
                Colors.white,
              ],
              stops: const [0.0, 0.65],
            ),
          ),
          child: SafeArea(
            top: false,
            child: child,
          ),
        ),
      ),
    );
  }
}
