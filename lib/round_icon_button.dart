import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({@required this.icon, @required this.onPress});
  final Function onPress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onPress,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

