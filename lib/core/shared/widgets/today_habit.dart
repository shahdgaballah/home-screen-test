import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TodayHabit extends StatelessWidget {
  final double? width;
  final String text;
  final TextStyle style;

  const TodayHabit({super.key,
     this.width,

    this.text='Today Habit',
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 297.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0)
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
