import 'package:flutter/material.dart';
import 'package:sayhi/detail_page.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  final List<String> items = const [
    'Item 1 - Flutter Development',
    'Item 2 - React Native Apps',
    'Item 3 - iOS Swift Programming',
    'Item 4 - Android Kotlin',
    'Item 5 - UI/UX Design',
    'Item 6 - Backend Development',
    'Item 7 - Database Management',
    'Item 8 - API Integration',
    'Item 9 - Testing & Debugging',
    'Item 10 - Performance Optimization',
    'Item 11 - State Management',
    'Item 12 - Animation & Transitions',
    'Item 13 - Custom Widgets',
    'Item 14 - Platform Channels',
    'Item 15 - Firebase Integration',
    'Item 16 - Push Notifications',
    'Item 17 - Local Storage',
    'Item 18 - Network Requests',
    'Item 19 - Security Implementation',
    'Item 20 - App Store Deployment',
    'Item 1 - Flutter Development',
    'Item 2 - React Native Apps',
    'Item 3 - iOS Swift Programming',
    'Item 4 - Android Kotlin',
    'Item 5 - UI/UX Design',
    'Item 6 - Backend Development',
    'Item 7 - Database Management',
    'Item 8 - API Integration',
    'Item 9 - Testing & Debugging',
    'Item 10 - Performance Optimization',
    'Item 11 - State Management',
    'Item 12 - Animation & Transitions',
    'Item 13 - Custom Widgets',
    'Item 14 - Platform Channels',
    'Item 15 - Firebase Integration',
    'Item 16 - Push Notifications',
    'Item 17 - Local Storage',
    'Item 18 - Network Requests',
    'Item 19 - Security Implementation',
    'Item 20 - App Store Deployment',
  ];
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Example')),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                // Navigate to detail page when tapped
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => DetailPage()));
              },
              title: Text(items[index]),
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('${index + 1}'),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}
