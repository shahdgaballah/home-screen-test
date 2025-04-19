import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_screen_test/core/shared/widgets/habit_item.dart';
import 'package:home_screen_test/core/shared/widgets/see_text_button.dart';
import 'package:home_screen_test/core/shared/widgets/today_habit.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'habits_screen.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> userHabits = ["Meditating", "Exercise", "Read a Book"];

// Create a map to track habit completion status
  final Map<String, bool> habitStates = {};

  // User name
  final String name = "Susy";

  @override
  void initState() {
    super.initState();
    // Initialize habit states
    for (var habit in userHabits) {
      habitStates[habit] = false;
    }
  }



  double getCompletedPercentage() {
    int totalHabits = userHabits.length;
    int completedHabits = habitStates.values.where((checked) => checked).length;
    return (completedHabits / totalHabits) * 100;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,//HexColor('#FCFCFF'),

      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sun, 1 March 2022',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: HexColor('#2F2F2F'),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ), //date
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    Text('Hello, ',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: HexColor('#2F2F2F'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('${name}!',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: HexColor('#3843FF'),
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ), // hello, name
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 189.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: HexColor('#3843FF'),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                      CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 10.0,
                      percent: getCompletedPercentage() / 100,
                      center: Text(
                        '${getCompletedPercentage().toStringAsFixed(0)}%',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      progressColor: Colors.white,
                      backgroundColor: Colors.white.withValues(alpha: 0.2),
                      circularStrokeCap: CircularStrokeCap.round,
                       ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('${habitStates.values.where((checked) => checked).length} of ${userHabits.length} habits\ncompleted today!',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: HexColor('#FFFFFF'),
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            //calender flit

                          ],
                        ),
                      ],
                    ),
                  ), //habit completion container

                ), //habit completion

                SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 297.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                    child: TodayHabit(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21.0,
                          color: HexColor('2F2F2F'),
                        )),
                  ), //today habit
                    SeeTextButton(onPressed:  () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HabitsScreen(),
                        ),
                      );

                    },
                        text: 'See all',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: HexColor('#3843FF'),
                        )), //see all


                  ],
                ), //today habit & see all row
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 500.0,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      padding: const EdgeInsets.all(10.0),
                      itemBuilder: (context, index){
                        final habit = userHabits[index];
                        return HabitItem(
                          width: double.infinity,
                          height: 58,
                          background: HexColor('#3843FF').withValues(alpha: 0.1),
                          text: userHabits[index],
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: HexColor('#3843FF')
                          ),

                          onChecked: (bool? checked){
                            setState(() {
                              habitStates[habit] = checked ?? false;
                            });
                          },
                          iconSize: 20.0,
                          iconColor: HexColor('#666666'),
                          fillColor: HexColor('#3843FF').withValues(alpha: 0.1),
                          checkColor: Colors.white, onPressed: () {  },
                          checkboxSize: 30.0,
                          borderColor: HexColor('#3843FF').withValues(alpha: 0.1),
                          borderWidth: null,);

                      },
                      separatorBuilder: (context, index)=>SizedBox(height: 10.0,),
                      itemCount:userHabits.length, ),
                ), //listview





              ],
            ),
          ),
      ),
    );
  }
}

