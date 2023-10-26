import 'package:flutter/material.dart';

class AddPurchase extends StatefulWidget {
  const AddPurchase({Key? key}) : super(key: key);

  @override
  State<AddPurchase> createState() => _AddPurchaseState();
}

class _AddPurchaseState extends State<AddPurchase> {
  final _myFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Purchase"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _myFormKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value?.isEmpty == true) {
                    return "Please enter name";
                  } if(value!.length < 3){
                    return "Name must be greater than 3 digits";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Name",
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          if (_myFormKey.currentState?.validate() == true) { // Use null-aware operator
            // Form is valid, you can perform further actions here
          }
        },
      ),
    );
  }
}
