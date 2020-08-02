import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/Bottom_Button.dart';


class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResult,@required this.resultText,@required this.resultInterpretation});

  final String bmiResult;
  final String resultText;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator Results'),
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTitleTextStyle,)),),
          Expanded(
            flex: 5,
              child: ReusableCard(color: kActiveCardColor, cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText, style: kResultsTextStyle,),
                  Text(bmiResult, style: kBMITextStyle,),
                  Text(resultInterpretation, style: kBodyTextStyle,),


                ],
              ),), ),
          BottomButton(buttonTitle: 'Re-Calculate', onTap: (){

            Navigator.pop(context);

          })
        ],

      ),
    );
  }
}
