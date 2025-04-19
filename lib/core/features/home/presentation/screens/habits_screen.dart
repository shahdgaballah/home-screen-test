import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_screen_test/core/shared/widgets/habit_item.dart';

class HabitsScreen extends StatefulWidget {
  const HabitsScreen({super.key});

  @override
  State<HabitsScreen> createState() => _HabitsScreenState();
}

class _HabitsScreenState extends State<HabitsScreen> {
  List<String> userHabits = ["Meditating", "Exercise", "Read a Book"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#FCFCFF'),
      appBar: AppBar(
        backgroundColor: HexColor('#FCFCFF'),
        elevation: 0,
        title: Text(
          'Your habit',
          style: TextStyle(
            fontSize: 24.0,
            color: HexColor('#2F2F2F'),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        itemCount: userHabits.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: HabitItem(
              width: double.infinity,
              height: 58,
              background: HexColor('#3843FF').withValues(alpha: 0.1),
              text: userHabits[index],
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: HexColor('#3843FF')
              ),
              onChecked: (bool? checked) {
                setState(() {
                  // Handle habit completion
                });
              },
              iconSize: 20.0,
              iconColor: HexColor('#666666'),
              fillColor: HexColor('#3843FF').withValues(alpha: 0.1),
              checkColor: Colors.white,
              onPressed: () {},
              checkboxSize: 30.0,
              borderColor: HexColor('#3843FF').withValues(alpha: 0.1),
              borderWidth: null,
            ),
          );
        },
      ),
    );
  }
}