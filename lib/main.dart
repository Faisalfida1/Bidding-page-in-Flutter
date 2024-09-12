import 'package:flutter/material.dart';

void main() {
  runApp(BiddingApp());
}

class BiddingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bidding App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Remove the brightness property from ThemeData and configure it within colorScheme
        colorScheme: ColorScheme.light(
          primary: Colors.blueGrey, // Set primary color to blueGray
          secondary: Colors.blueGrey, // Set accent color to blueGray
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white, fontSize: 18), // Text color and style
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey, // Button color
            foregroundColor: Colors.black, // Button text color
          ),
        ),
      ),
      home: MaximumBid(),
    );
  }
}

class MaximumBid extends StatefulWidget {
  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int _currentBid = 75; // Initial bid value

  void _increaseBid() {
    setState(() {
      _currentBid += 75; // Increase bid by $75
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bidding Page'),
        backgroundColor: Theme.of(context).colorScheme.primary, // AppBar uses primary color (yellow)
      ),
      body: Container(
        color: Colors.grey[700], // grey background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Current Maximum Bid:',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black, // Text color (changed to black)
                ),
              ),
              SizedBox(height: 25),
              Text(
                '\$$_currentBid',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Bid text color (changed to black)
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: _increaseBid,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: TextStyle(fontSize: 20),
                ),
                child: Text('Push \$75'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}