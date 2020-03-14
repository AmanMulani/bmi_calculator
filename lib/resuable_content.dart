import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  final int color;
  final Widget childCard;
  final Function onPress;
  ReusableWidget({this.color = 0xFF1d1e33, this.childCard, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Color(color),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
