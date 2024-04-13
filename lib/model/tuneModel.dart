import 'package:flutter/cupertino.dart';

import '../tuneItem/tuneItem.dart';

class tuneModel extends StatelessWidget {

  final tuneItem tune ;
  const tuneModel({super.key,required this.tune});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
