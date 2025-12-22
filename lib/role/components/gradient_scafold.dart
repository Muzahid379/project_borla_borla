import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GradientScaffold extends StatelessWidget {
  final Widget child;
  final AppBar? appBar;

  const GradientScaffold({
    super.key,
    required this.child,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // REQUIRED
        statusBarIconBrightness: Brightness.dark, // Android → black icons
        statusBarBrightness: Brightness.light, // iOS → black icons
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: appBar == null
            ? null
            : AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
          title: appBar!.title,
          actions: appBar!.actions,
          leading: appBar!.leading,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFE8F5E9),
                Colors.white,
              ],
              stops: [0.0, 0.7],
            ),
          ),
          child: SafeArea(
            top: false, // allow gradient behind status bar
            child: child,
          ),
        ),
      ),
    );
  }
}
