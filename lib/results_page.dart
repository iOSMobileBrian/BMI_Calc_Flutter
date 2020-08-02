import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/Bottom_Button.dart';


class ResultsPage extends StatelessWidget {
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
                  Text('Normal', style: kResultsTextStyle,),
                  Text('18.5', style: kBMITextStyle,),
                  Text('Your BMI is quite low, Good Job!', style: kBodyTextStyle,),


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
