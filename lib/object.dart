import 'package:bonfire/bonfire.dart';
import 'package:flutter_pac_man/interface.dart';

class Object extends GameDecoration with Sensor {
  Object(Vector2 position)
      : super.withSprite(
          sprite: Sprite.load('objects/objectOne.png'),
          position: position,
          size: Vector2(10, 10),
        );

  @override
  void onContact(GameComponent component) {
    if (component is Player) {
      points++;
      removeFromParent();
    }
  }
}
