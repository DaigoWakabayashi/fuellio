import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fuellio/brain.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'results_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int distance = 500;
  int ability = 10;
  int gasoline = 130;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fuellio',
          style: GoogleFonts.aBeeZee(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.road),
                Text(
                  '走行距離',
                  style: LargeTextStyle,
                ),
                Container(
                  width: 200.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                    style: LargeTextStyle,
                  ),
                ),
                Text(
                  'km   ',
                  style: UnitTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.car),
                Text(
                  '車の燃費',
                  style: LargeTextStyle,
                ),
                Container(
                  width: 200.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                    style: LargeTextStyle,
                  ),
                ),
                Text(
                  'km/L',
                  style: UnitTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.gasPump,
                ),
                Text(
                  'ガソリン',
                  style: LargeTextStyle,
                ),
                Container(
                  width: 200.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                    style: LargeTextStyle,
                  ),
                ),
                Text(
                  '円/L',
                  style: UnitTextStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          SizedBox(
            width: 150.0,
            height: 75.0,
            child: RaisedButton(
              textColor: Colors.white,
              shape: StadiumBorder(),
              color: Colors.red,
              child: Text('算出する', style: LargeTextStyle),
              onPressed: () {
                Calculator calc = Calculator(
                    distance: distance, ability: ability, gasoline: gasoline);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            payment: calc.calculatePayment(),
                          )),
                );
              },
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
        ],
      ),
    );
  }
}
