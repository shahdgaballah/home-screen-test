import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HabitItem extends StatelessWidget {
  final double width;
  final double height;
  final Color background;
  final String text;
  final TextStyle style;
  final bool isChecked;
  final Function(bool?) onChecked;
  final Icon icon;
  final double iconSize;
  final Color iconColor;
  final Color fillColor;
  final Color checkColor;
  final Function() onPressed;

  final double checkboxSize;
  final Color borderColor;
  final double? borderWidth;


  const HabitItem({super.key, required this.width,
    required this.height,
    required this.background,
    required this.text,
    required this.style,
    this.isChecked=false,
    required this.onChecked,
    this.icon= const Icon(Icons.more_vert),
    required this.iconSize, required this.iconColor,
    required this.fillColor,
    required this.checkColor, required this.onPressed, required this.checkboxSize, required this.borderColor,
    this.borderWidth,
  });

  @override

  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color:isChecked ? HexColor('#3843FF').withValues(alpha: 0.1) : background,
      ),
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text,
            style: style,
          ),
          Spacer(),
          Row(
            children: [
              SizedBox(
                width: checkboxSize,
                height: checkboxSize,
                child: Checkbox(value: isChecked,
                  onChanged: onChecked,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: borderColor, width: borderWidth??0.1),
                  ),
                  fillColor: WidgetStateProperty.all(fillColor),
                  checkColor: checkColor,),
              ),
              SizedBox(width: 2.0,),
              IconButton(onPressed: onPressed,
                icon: Icon( Icons.more_vert,
                    size: iconSize,
                    color: iconColor),)
            ],
          ),


        ],
      ),
    );
  }
}
