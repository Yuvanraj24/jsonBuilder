import 'package:dodo_demo_app/alert_dialog/alert_dialog.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter/material.dart';

class DatePick extends StatelessWidget {
  //const DatePick({ Key? key }) : super(key: key);

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    // TODO: implement your code here
  }
  DateTime currentDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AlertBox(),
          Text("$currentDate"),
          Container(
            child: SfDateRangePicker(
              view: DateRangePickerView.month,
              onSelectionChanged: _onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.range,
              allowViewNavigation: false,
              backgroundColor: Colors.white,
              cancelText: "",
              selectionColor: Colors.blue,
              selectionRadius: 25.0,
            ),
          ),
          
        ],
      ),
    );
  }
}
