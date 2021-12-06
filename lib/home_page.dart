import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int height = 180;
  int weight = 60;
  int age = 23;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Card(
                  cardChild: FontIcons(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  cardChild: FontIcons(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Card(
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,


              children: [
                Text('HEIGHT',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xFF8D8E98),
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [

                    Text(height.toString(),
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w900,
                    ),
                    ),
                    Text('cm',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF8D8E98),
                    ),
                    ),
                  ],
                ),

                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Color(0xFF8D8E98),
                    activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 230,
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
                child: Card(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                      Text(weight.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PlusMinusButtons(
                            icon: FontAwesomeIcons.minus,
                            onPress: (){
                              setState(() {
                                weight--;
                              });
                            },
                          ),


                          SizedBox(
                            width: 10.0,
                          ),

                          PlusMinusButtons(
                            icon: FontAwesomeIcons.plus,
                            onPress: (){
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                      Text(age.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PlusMinusButtons(
                            icon: FontAwesomeIcons.minus,
                            onPress: (){
                              setState(() {
                                age--;
                              });
                            },
                          ),


                          SizedBox(
                            width: 10.0,
                          ),

                          PlusMinusButtons(
                            icon: FontAwesomeIcons.plus,
                            onPress: (){
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class Card extends StatelessWidget {
  Card({this.cardChild});
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

class FontIcons extends StatelessWidget {
  FontIcons({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
class PlusMinusButtons extends StatelessWidget {
  PlusMinusButtons({@required this.icon, @required this.onPress});
  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 52.0,
        height: 52.0,
      ),
      elevation: 0.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
