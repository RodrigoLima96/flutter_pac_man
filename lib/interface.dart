import 'dart:async' as async;
import 'package:bonfire/base/bonfire_game.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pac_man/widgets/interface_info.dart';

int points = 0;

class PlayerInterface extends StatefulWidget {
  static const interfaceKey = 'playerInterface';

  final BonfireGame game;

  const PlayerInterface({Key? key, required this.game}) : super(key: key);

  @override
  State<PlayerInterface> createState() => _PlayerInterfaceState();
}

class _PlayerInterfaceState extends State<PlayerInterface> {
  double life = 0;
  late async.Timer _lifeTimer;
  bool win = false;

  @override
  void initState() {
    _lifeTimer =
        async.Timer.periodic(const Duration(microseconds: 100), (timer) {
      _verifyLife();
    });
    super.initState();
  }

  @override
  void dispose() {
    _lifeTimer.cancel();
    super.dispose();
  }

  void _verifyLife() {
    if (points == 60) {
      setState(() {
        win = true;
        life = 0;
        points;
      });
    }
    if (life != (widget.game.player?.life ?? 0)) {
      setState(() {
        life = widget.game.player?.life ?? 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (win) {
      return InterfaceInfo(size: size, win: true);
    }

    return life != 0 ? Container() : InterfaceInfo(size: size, win: false);
  }
}
