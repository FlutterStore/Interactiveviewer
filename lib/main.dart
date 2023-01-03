import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InteractiveViewers()
    );
  }
}

class InteractiveViewers extends StatefulWidget {
  const InteractiveViewers({super.key});

  @override
  State<InteractiveViewers> createState() => _InteractiveViewersState();
}

class _InteractiveViewersState extends State<InteractiveViewers> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("InteractiveViewer",style: TextStyle(fontWeight: FontWeight.normal),),
        centerTitle: true,
      ),
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(60.0),
          minScale: 0.1,
          maxScale: 1.6,
          alignPanAxis: false,
          clipBehavior: Clip.antiAlias,
          // constrained: true,
          // onInteractionEnd: (details) {},
          // onInteractionStart: (details) {},
          // onInteractionUpdate: (details) {},
          panEnabled: true,
          scaleEnabled: true,
          scaleFactor: 250,
          transformationController: TransformationController(),
          child: Container(
            height: 250,
            width: 250,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.yellow, Colors.green],
                stops: <double>[0.0, 1.0],
              ),
            ),
          ),
        ),
      )
    );
  }
}