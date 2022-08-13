import 'package:bonfire/bonfire.dart';
import 'package:flutter_pac_man/enemy_sprite.dart';

class EnemyOne extends SimpleEnemy with ObjectCollision {
  bool colided = false;
  EnemyOne(Vector2 position)
      : super(
          speed: 40,
          size: Vector2(15, 15),
          position: position,
          animation: SimpleDirectionAnimation(
            idleRight: EnemySprite.idleRight,
            runRight: EnemySprite.runRight,
            idleUp: EnemySprite.idleTop,
            runUp: EnemySprite.runTop,
            idleDown: EnemySprite.idleBottom,
            runDown: EnemySprite.runBottom,
            idleLeft: EnemySprite.idleLeft,
            runLeft: EnemySprite.runLeft,
          ),
        ) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(
        size: Vector2(5, 5),
      ),
    ]));
  }

  @override
  void update(double dt) async {
    seeAndMoveToPlayer(
      closePlayer: (player) {
        player.life = 0;
      },
      radiusVision: 300,
    );
    super.update(dt);
  }
}
