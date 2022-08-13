import 'package:bonfire/bonfire.dart';

class ObjectSprite {
  static get idleRight => SpriteAnimation.load(
        'enemies/enemy_one_idle.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(90, 90),
        ),
      );

  static get idleLeft => SpriteAnimation.load(
        'enemies/enemy_one_idle.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(90, 90),
        ),
      );
  static get idleTop => SpriteAnimation.load(
        'enemies/enemy_one_idle.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(90, 90),
        ),
      );

  static get idleBottom => SpriteAnimation.load(
        'enemies/enemy_one_idle.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(90, 90),
        ),
      );

  static get runRight => SpriteAnimation.load(
        'enemies/enemy_one_idle.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(90, 90),
        ),
      );

  static get runLeft => SpriteAnimation.load(
        'enemies/enemy_one_idle.png',
        SpriteAnimationData.sequenced(
          amount: 8,
          stepTime: 0.1,
          textureSize: Vector2(90, 90),
        ),
      );
  static get runTop => SpriteAnimation.load(
        'enemies/enemy_one_idle.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(90, 90),
        ),
      );
  static get runBottom => SpriteAnimation.load(
        'enemies/enemy_one_idle.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(90, 90),
        ),
      );
}
