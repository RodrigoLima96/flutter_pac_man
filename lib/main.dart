import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pac_man/enemy.dart';
import 'package:flutter_pac_man/interface.dart';
import 'package:flutter_pac_man/object.dart';
import 'package:flutter_pac_man/pac_man.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PacManGame(),
    );
  }
}

class PacManGame extends StatefulWidget {
  const PacManGame({Key? key}) : super(key: key);

  @override
  State<PacManGame> createState() => _PacManGameState();
}

class _PacManGameState extends State<PacManGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BonfireTiledWidget(
          cameraConfig: CameraConfig(
            moveOnlyMapArea: true,
          ),
          joystick: Joystick(directional: JoystickDirectional()),
          map: TiledWorldMap('map.json',
              forceTileSize: const Size(20, 20),
              objectsBuilder: {
                'enemy': (properties) => EnemyOne(properties.position),
                'object': (properties) => Object(properties.position),
              }),
          player: PacMan(
            Vector2(40, 40),
          ),
          overlayBuilderMap: {
            PlayerInterface.interfaceKey: (context, game) =>
                PlayerInterface(game: game),
          },
          initialActiveOverlays: const [
            PlayerInterface.interfaceKey,
          ],
        ),
      ),
    );
  }
}
