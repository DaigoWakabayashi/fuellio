import 'package:flutter/material.dart';
import 'package:fuellio/input_page.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fuellio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('戻る',),
              onPressed: (){
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => InputPage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
