import 'package:flutter/material.dart';
import 'resuable_content.dart';
import 'constants.dart';
import 'bottom_widget.dart';

class ResultsPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String resultComment;

  ResultsPage({ @required this.bmiResult, @required this.resultText, @required this.resultComment});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              alignment: Alignment.center,
              child: Text(
                'Your Result',
                style: kResultTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableWidget(
              color: 0xFF1D1E33,
              childCard: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      resultText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.tealAccent,
                        fontSize: 25,
                      ),
                    ),
                    Text(
                      bmiResult,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                       fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 90,
                      ),
                    ),
                    Text(
                      resultComment,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomWidget(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
