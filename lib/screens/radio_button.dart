import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  late String selectedOption;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Radio Buttons Example'),
        ),
        body: Column(
          children: <Widget>[
            RadioListTile(
              title: Text('Option 1'),
              value: 'Option 1',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                });
              },
            ),
            RadioListTile(
              title: Text('Option 2'),
              value: 'Option 2',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                });
              },
            ),
            RadioListTile(
              title: Text('Option 3'),
              value: 'Option 3',
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}