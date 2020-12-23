import 'package:flutter/material.dart';
import 'package:get_time_ago/get_time_ago.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'GetTimeAgo Example',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _dateTime = DateTime.now().subtract(const Duration(hours: 7));
  final _timestamp = '2020-09-10 05:21:37.712498';

  Future<void> _selectDate() async {
    var pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now());
    if (pickedDate != null) {
      setState(() {
        _dateTime = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('GetTimeAgo Example'),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                  onPressed: _selectDate,
                  label: const Text('Select DateTime'),
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  icon: const Icon(Icons.calendar_today),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Converting DateTime to TimeAgo',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                Text(_dateTime.toString()),
                Text(
                  TimeAgo.getTimeAgo(_dateTime),
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Converting String to TimeAgo',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                Text(_timestamp),
                Text(
                  TimeAgo.getTimeAgo(DateTime.parse(_timestamp)),
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      );
}
