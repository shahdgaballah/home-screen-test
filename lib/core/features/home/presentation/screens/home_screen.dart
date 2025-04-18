import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:home_screen_test/core/shared/widgets/habit_item.dart';
import 'package:home_screen_test/core/shared/widgets/see_text_button.dart';
import 'package:home_screen_test/core/shared/widgets/today_habit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

String name = "Susy";

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#FCFCFF'),

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
                      borderRadius: BorderRadius.circular(5.0),
                      color: HexColor('#3843FF'),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      //percentage indicator
                      children: [
                        Column(
                          children: [
                            Text('3 of 5 habits\ncompleted today!',
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

                ),

                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Expanded(
                    child: TodayHabit(width: 363.0,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21.0,
                          color: HexColor('2F2F2F'),
                        )),
                  ), //today habit
                    SeeTextButton(onPressed:  () { },
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: HabitItem(width: double.infinity,
                      height: 58,
                      background: HexColor('#3843FF').withValues(alpha: 0.1),
                      text: 'Meditating',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#3843FF')
                      ),

                      onChecked: (bool? checked){
                        setState(() {
                          //habitStates[habit] = checked ?? false;
                        });
                      },
                      iconSize: 20.0,
                      iconColor: HexColor('#666666'),
                      fillColor: HexColor('#3843FF').withValues(alpha: 0.1),
                      checkColor: Colors.white, onPressed: () {  },
                    checkboxSize: 30.0, borderColor: HexColor('#3843FF').withValues(alpha: 0.1), borderWidth: null,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: HabitItem(width: double.infinity,
                    height: 58,
                    background: HexColor('#3843FF').withValues(alpha: 0.1),
                    text: 'Meditating',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#3843FF')
                    ),

                    onChecked: (bool? checked){
                      setState(() {
                        //habitStates[habit] = checked ?? false;
                      });
                    },
                    iconSize: 20.0,
                    iconColor: HexColor('#666666'),
                    fillColor: HexColor('#3843FF').withValues(alpha: 0.1),
                    checkColor: Colors.white, onPressed: () {  },
                    checkboxSize: 30.0, borderColor: HexColor('#3843FF').withValues(alpha: 0.1), borderWidth: null,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: HabitItem(width: double.infinity,
                    height: 58,
                    background: HexColor('#3843FF').withValues(alpha: 0.1),
                    text: 'Meditating',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#3843FF')
                    ),

                    onChecked: (bool? checked){
                      setState(() {
                        //habitStates[habit] = checked ?? false;
                      });
                    },
                    iconSize: 20.0,
                    iconColor: HexColor('#666666'),
                    fillColor: HexColor('#3843FF').withValues(alpha: 0.1),
                    checkColor: Colors.white, onPressed: () {  },
                    checkboxSize: 30.0, borderColor: HexColor('#3843FF').withValues(alpha: 0.1), borderWidth: null,),
                ),





              ],
            ),
          ),
      ),
    );
  }
}
//