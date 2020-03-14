import 'package:flutter/material.dart';
import 'constants.dart';

class BottomWidget extends StatelessWidget {

  const BottomWidget({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(kBottomContainerColor),
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        height: 60.0,
        child: Center(
          child: Text(buttonTitle,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
