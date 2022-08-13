import 'package:flutter/material.dart';
import 'package:flutter_pac_man/interface.dart';
import 'package:flutter_pac_man/main.dart';

class InterfaceInfo extends StatelessWidget {
  final Size size;
  final bool win;
  const InterfaceInfo({
    Key? key,
    required this.size,
    required this.win,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      padding: EdgeInsets.only(top: size.height * 0.4),
      color: Colors.black,
      child: Column(
        children: [
          Text(
            'Total of Points: ${points.toString()}',
            style: const TextStyle(
              color: Colors.green,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            win ? 'WIN' : 'Game Over',
            style: const TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          TextButton(
              onPressed: () {
                points = 0;

                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const PacManGame()));
              },
              child: const Text(
                'PLAY AGAIN',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
    );
  }
}
