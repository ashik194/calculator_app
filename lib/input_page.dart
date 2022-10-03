import 'package:calculator_app/calculate_result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';
import 'constrains.dart';
import 'calculate_result.dart';
import 'bmi_calculate.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  int height = 180;
  int weight = 40;
  int age = 20;

  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  // void selectCard(Gender pickGender){
  //   if(pickGender == Gender.male){
  //     if(maleCardColor == inactiveCardColor){
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     }else{
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }if(pickGender == Gender.female){
  //     if(femaleCardColor == inactiveCardColor){
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     }else{
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Calculate App")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusebleCard(
                      clr: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardIcon: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusebleCard(
                      clr: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardIcon: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusebleCard(
              clr: activeCardColor,
              cardIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: labelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      Text("cm", style: labelStyle)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Color(0xFFFFFFFF),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      trackHeight: 2.0,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 140.0,
                      max: 320.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusebleCard(
                    clr: activeCardColor,
                    cardIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: labelStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              elevation: 6.0,
                              child: Icon(FontAwesomeIcons.minus),
                              constraints: BoxConstraints.tightFor(
                                width: 46.0,
                                height: 46.0,
                              ),
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              elevation: 6.0,
                              child: Icon(FontAwesomeIcons.plus),
                              constraints: BoxConstraints.tightFor(
                                width: 46.0,
                                height: 46.0,
                              ),
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),

                            // RoundedIconButton(
                            //   icon: FontAwesomeIcons.plus,
                            //   onPressed: () {
                            //     setState(() {
                            //       weight++;
                            //     });
                            //   },
                            // ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusebleCard(
                    clr: activeCardColor,
                    cardIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: labelStyle,
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              elevation: 6.0,
                              child: Icon(FontAwesomeIcons.minus),
                              constraints: BoxConstraints.tightFor(
                                width: 46.0,
                                height: 46.0,
                              ),
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              elevation: 6.0,
                              child: Icon(FontAwesomeIcons.plus),
                              constraints: BoxConstraints.tightFor(
                                width: 46.0,
                                height: 46.0,
                              ),
                              shape: CircleBorder(),
                              fillColor: Color(0xFF4C4F5E),
                            ),

                            // RoundedIconButton(
                            //   icon: FontAwesomeIcons.plus,
                            //   onPressed: () {
                            //     setState(() {
                            //       weight++;
                            //     });
                            //   },
                            // ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Calculation cal = Calculation(height: height, weight: weight);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage(
                    getResult: cal.calculateBMI(),
                    resultTitle: cal.getResultText(),
                    resultQoute: cal.getQoutes(),
                  )));
            },
            child: Container(
              child: Center(
                  child: Text(
                "CALCULATE",
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

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed(),
      elevation: 6.0,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 46.0,
        height: 46.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
