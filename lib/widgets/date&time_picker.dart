import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime? _dateTime;
  TimeOfDay? _timeOfDay;
  Future getDate(context) async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 30),
      lastDate: DateTime(DateTime.now().year + 3),
    );
    setState(() {
      _dateTime = selectedDate;
    });
  }

  Future getTime() async {
    final selecetedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());

    setState(() {
      _timeOfDay = selecetedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // ignore: prefer_const_literals_to_create_immutables
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _dateTime == null
                    ? "No Selected Date"
                    : "Date: ${_dateTime!.day}-${_dateTime!.month}-${_dateTime!.year}",
                style: TextStyle(fontSize: 20.0),
              ),
              ElevatedButton(
                  onPressed: () {
                    getDate(context);
                  },
                  child:
                      Text("Selected Date", style: TextStyle(fontSize: 20.0))),
              SizedBox(height: 10.0),
              Text(
                _timeOfDay == null
                    ? "No Selected Time"
                    : "Time: ${_timeOfDay!.hour}-${_timeOfDay!.minute}",
                style: TextStyle(fontSize: 20.0),
              ),
              ElevatedButton(
                  onPressed: () {
                    getTime();
                  },
                  child:
                      Text("Selected Time", style: TextStyle(fontSize: 20.0))),
            ],
          ),
        ),
      ),
    );
  }
}
