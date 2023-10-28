import 'package:flutter/material.dart';
import 'package:medical_inventory/add_purchase.dart';

class MyUI extends StatefulWidget {
  @override
  State<MyUI> createState() => _MyUIState();
}

class _MyUIState extends State<MyUI> {
  DateTime selectedDate = DateTime.now();
  TextEditingController dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
  }

  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Example'),
      ),
      body: Column(
        children: <Widget>[
          // Top Container
          Container(
              height: 55,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.keyboard_arrow_left),
                            Text('Next', style: TextStyle(fontSize: 15)),
                          ],
                        )),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          'Products',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Row(
                          children: [
                            Text('     Review', style: TextStyle(fontSize: 15)),
                            Icon(Icons.keyboard_arrow_right),
                          ],
                        )),
                  ),
                ],
              ),
              ),
                        Container(
            color: Colors.blue,
            width: double.infinity,
            height: 2
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(15),
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('* ', 'Medicine Name')],
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('* ', 'Quantity')],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('', 'Free Qty')],
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                            child: Row(
                              children: [
                                Text(
                                  "* ",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Package Type",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: DropdownButton(
                                value: dropdownvalue,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('* ', 'Qty/Pack')],
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                            child: Row(
                              children: [
                                Text(
                                  "* ",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Unit",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: DropdownButton(
                                value: dropdownvalue,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('', 'HSN')],
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('', 'Batch')],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Exp. Date',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          TextFormField(
                            controller: dateController,
                            decoration: InputDecoration(
                              // labelText: 'Date',
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.calendar_today),
                                onPressed: () {
                                  _selectDate(context);
                                },
                              ),
                            ),
                            readOnly: true,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('', 'Rate')],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('* ', 'MRP/Pack')],
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('* ', 'Discount(%)')],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('', 'GST')],
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('', 'Scheme')],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('', 'Final Rate/Pack')],
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('', 'Rack Number')],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('', 'HSN')],
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buildFormField('', 'Batch')],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child:
                        Text('Save & Review', style: TextStyle(fontSize: 15)),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child:
                        Text('Save & Add More', style: TextStyle(fontSize: 15)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
