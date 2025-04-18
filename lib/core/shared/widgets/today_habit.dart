import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TodayHabit extends StatelessWidget {
  final double width;
  final Color background;
  final String text;
  final TextStyle style;

  const TodayHabit({super.key,
    required this.width,
    this.background=Colors.white,
    this.text='Today Habit',
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: background,
      ),
      child: Row(
        children: [
          Text(text,
            style: style,
          ),
        ],
      ),
    );
  }
}
