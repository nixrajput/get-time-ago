import 'package:flutter/material.dart';
import 'package:get_time_ago/get_time_ago.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetTimeAgoExampleApp());
}

class GetTimeAgoExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetTimeAgo Example',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: GetTimeAgoExampleScreen(),
    );
  }
}

class GetTimeAgoExampleScreen extends StatelessWidget {
  // Helper function to get the DateTime relative to now
  DateTime _getRelativeDateTime(Duration duration) {
    return DateTime.now().subtract(duration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetTimeAgo Example'),
        centerTitle: true,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16.0)),
              border: Border.all(color: Colors.blue.shade50),
            ),
            child: ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: [
                _buildExampleTile(
                  context,
                  'Just Now (Less than 15 seconds ago)',
                  GetTimeAgo.parse(
                    _getRelativeDateTime(const Duration(seconds: 10)),
                  ),
                ),
                _buildExampleTile(
                  context,
                  '30 seconds ago',
                  GetTimeAgo.parse(
                    _getRelativeDateTime(const Duration(seconds: 30)),
                  ),
                ),
                _buildExampleTile(
                  context,
                  '1 minute ago',
                  GetTimeAgo.parse(
                    _getRelativeDateTime(const Duration(minutes: 1)),
                  ),
                ),
                _buildExampleTile(
                  context,
                  '2 minutes ago',
                  GetTimeAgo.parse(
                    _getRelativeDateTime(const Duration(minutes: 2)),
                  ),
                ),
                _buildExampleTile(
                  context,
                  '1 hour ago',
                  GetTimeAgo.parse(
                    _getRelativeDateTime(const Duration(hours: 1)),
                  ),
                ),
                _buildExampleTile(
                  context,
                  '2 hours ago',
                  GetTimeAgo.parse(
                    _getRelativeDateTime(const Duration(hours: 2)),
                  ),
                ),
                _buildExampleTile(
                  context,
                  '1 day ago',
                  GetTimeAgo.parse(
                    _getRelativeDateTime(const Duration(days: 1)),
                  ),
                ),
                _buildExampleTile(
                  context,
                  '3 days ago',
                  GetTimeAgo.parse(
                    _getRelativeDateTime(const Duration(days: 3)),
                  ),
                ),
                _buildExampleTile(
                  context,
                  '10 days ago',
                  GetTimeAgo.parse(
                    _getRelativeDateTime(const Duration(days: 10)),
                  ),
                ),
                _buildExampleTile(
                  context,
                  'Custom format beyond 7 days',
                  GetTimeAgo.parse(
                    _getRelativeDateTime(
                      const Duration(days: 10),
                    ),
                    pattern: 'yyyy-MM-dd',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildExampleTile(BuildContext context, String title, String timeAgo) {
    return ListTile(
      title: Text(title),
      subtitle: Text(timeAgo),
      isThreeLine: true,
    );
  }
}
