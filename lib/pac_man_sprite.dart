import 'package:bonfire/bonfire.dart';

class PacManSprite {
  static get idleRight => SpriteAnimation.load(
        'pac_man/idle_right.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(300, 300),
        ),
      );

  static get idleLeft => SpriteAnimation.load(
        'pac_man/idle_left.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(300, 300),
        ),
      );
  static get idleTop => SpriteAnimation.load(
        'pac_man/idle_top.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(300, 300),
        ),
      );

  static get idleBottom => SpriteAnimation.load(
        'pac_man/idle_bottom.png',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(300, 300),
        ),
      );

  static get runRight => SpriteAnimation.load(
        'pac_man/right.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.1,
          textureSize: Vector2(290, 300),
        ),
      );

  static get runLeft => SpriteAnimation.load(
        'pac_man/left.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.1,
          textureSize: Vector2(300, 300),
        ),
      );
  static get runTop => SpriteAnimation.load(
        'pac_man/run_top.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.1,
          textureSize: Vector2(300, 300),
        ),
      );
  static get runBottom => SpriteAnimation.load(
        'pac_man/run_bottom.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.1,
          textureSize: Vector2(300, 300),
        ),
      );
}
