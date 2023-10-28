import 'package:flutter/material.dart';
import 'package:medical_inventory/add_purchase.dart';
import 'package:medical_inventory/create_sale.dart';

class MyDatePickerApp extends StatefulWidget {
  @override
  _MyDatePickerAppState createState() => _MyDatePickerAppState();
}

class _MyDatePickerAppState extends State<MyDatePickerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            AddPurchase(), // Replace SecondPage with the actual name of your second page widget.
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(double.infinity, 50), // Set the button height
                  ),
                  child: Text('Add Purchase',                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CreateSale(), // Replace SecondPage with the actual name of your second page widget.
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(double.infinity, 50), // Set the button height
                  ),
                  child: Text('Create Sale',                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
