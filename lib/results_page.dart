import 'package:flutter/material.dart';
import 'package:fuellio/input_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class ResultsPage extends StatelessWidget {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(
              width: 150.0,
              height: 75.0,
              child: RaisedButton(
                textColor: Colors.white,
                shape: StadiumBorder(),
                color: Colors.red,
                child: Text('戻る', style: LargeTextStyle),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => InputPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
