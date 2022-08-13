import 'package:bonfire/bonfire.dart';
import 'package:flutter_pac_man/pac_man_sprite.dart';

class PacMan extends SimplePlayer with ObjectCollision {
  int points = 0;
  PacMan(Vector2 position)
      : super(
          size: Vector2(15, 15),
          speed: 70,
          life: 100,
          position: position,
          animation: SimpleDirectionAnimation(
            idleRight: PacManSprite.idleRight,
            runRight: PacManSprite.runRight,
            idleUp: PacManSprite.idleTop,
            runUp: PacManSprite.runTop,
            idleDown: PacManSprite.idleBottom,
            runDown: PacManSprite.runBottom,
            idleLeft: PacManSprite.idleLeft,
            runLeft: PacManSprite.runLeft,
          ),
        ) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(size: Vector2(15, 15)),
    ]));
  }
}
