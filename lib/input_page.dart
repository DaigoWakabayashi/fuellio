import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'results_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fuellio',
        style: LargeTextStyle,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.road
                ),
                Text('走行距離',
                style: LargeTextStyle,
                ),
                Container(
                  width: 200.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                  ),
                ),
                Text('km   ',
                style: UnitTextStyle,),
              ],
            ),
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                    FontAwesomeIcons.car
                ),
                Text('車の燃費',
                  style: LargeTextStyle,
                ),
                Container(
                  width: 200.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                  ),
                ),
                Text('km/L',
                  style: UnitTextStyle,),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                    FontAwesomeIcons.car,
                ),
                Text('ガソリン',
                  style: LargeTextStyle,
                ),
                Container(
                  width: 200.0,
                  child: TextField(
                    keyboardType: TextInputType.number,
                  ),
                ),
                Text('円/L',
                  style: UnitTextStyle,),
              ],
            ),
          ),
          SizedBox(
            height: 200.0,
          ),
          SizedBox(
            width: 150.0,
            height: 75.0,
            child: RaisedButton(
              textColor: Colors.white,
              shape: StadiumBorder(),
              color: Colors.red,
              child: Text('算出する',
              style: TextStyle(fontSize: 25),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultsPage()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}


