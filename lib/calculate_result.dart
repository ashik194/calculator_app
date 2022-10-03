import 'package:calculator_app/constrains.dart';
import 'package:calculator_app/reuseable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this. resultTitle, required this.getResult, required this.resultQoute});
  final String resultTitle;
  final String getResult;
  final String resultQoute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculate Result"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                child: Center(child: Text("Your Result", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),)),
              ),
          ),
          Expanded(
            flex: 5,
              child: ReusebleCard(
                clr: activeCardColor,
                cardIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultTitle.toUpperCase(), style: resultText,),
                      Text(getResult, style: mainResult,),
                      Text(resultQoute, style: bodyText, textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  )),
              margin: EdgeInsets.only(top: 20),
              color: bottomBackground,
              height: 60.0,
              width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}
