import 'package:drawer/main.dart';
import 'package:drawer/src/features/booking/views/history_screen.dart';
import 'package:drawer/src/features/home_page.dart/views/drawer.dart';
import 'package:drawer/src/features/home_page.dart/views/home_page_screen.dart';
import 'package:drawer/src/features/payment/views/payment_screen.dart';
import 'package:drawer/src/features/settings/views/settings_screen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  BottomNavScreenState createState() => BottomNavScreenState();
}

class BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    BookingHistoryScreen(),
    PaymentHistoryScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat with us'),
        backgroundColor: Colors.grey.shade100,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_note),
            onPressed: () {
              // Handle edit action
            },
          ),
        ],
      ),
      // drawer: Drawer(
      //   child: Container(
      //     color: const Color(0xFF4A5637),
      //     child: ListView(
      //       padding: EdgeInsets.zero,
      //       children: [
      //         DrawerHeader(
      //           decoration: const BoxDecoration(
      //             color: Color(0xFF4A5637),
      //           ),
      //           child: Row(
      //             children: [
      //               const CircleAvatar(
      //                 radius: 30,
      //                 backgroundImage: AssetImage('assets/images/avatar.png'),
      //               ),
      //               const SizedBox(width: 10),
      //               Expanded(
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     const Text(
      //                       'Sara',
      //                       style: TextStyle(color: Colors.white, fontSize: 18),
      //                     ),
      //                     GestureDetector(
      //                       onTap: () {
      //                         // Handle edit profile
      //                       },
      //                       child: const Row(
      //                         children: [
      //                           Text(
      //                             'Edit Profile',
      //                             style: TextStyle(
      //                               color: Colors.white70,
      //                               fontSize: 14,
      //                             ),
      //                           ),
      //                           Icon(
      //                             Icons.edit_note,
      //                             color: Colors.white70,
      //                             size: 14,
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //         ListTile(
      //           leading: const Icon(Icons.chat, color: Colors.white),
      //           title: const Text(
      //             'Chat with us',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //           onTap: () {
      //             Navigator.pop(context);
      //             _onItemTapped(0);
      //           },
      //         ),
      //         ListTile(
      //           leading: const Icon(Icons.history, color: Colors.white),
      //           title: const Text(
      //             'Booking History',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //           onTap: () {
      //             Navigator.pop(context);
      //             _onItemTapped(1);
      //           },
      //         ),
      //         ListTile(
      //           leading: const Icon(Icons.payment, color: Colors.white),
      //           title: const Text(
      //             'Payment History',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //           onTap: () {
      //             Navigator.pop(context);
      //             _onItemTapped(2);
      //           },
      //         ),
      //         ListTile(
      //           leading: const Icon(Icons.settings, color: Colors.white),
      //           title: const Text(
      //             'Settings',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //           onTap: () {
      //             Navigator.pop(context);
      //             _onItemTapped(3);
      //           },
      //         ),
      //         const Divider(color: Colors.white54),
      //         const Padding(
      //           padding: EdgeInsets.all(8.0),
      //           child: Text(
      //             'Favorites',
      //             style: TextStyle(color: Colors.white, fontSize: 16),
      //           ),
      //         ),
      //         ListTile(
      //           leading: const Icon(Icons.favorite, color: Colors.white),
      //           title: const Text(
      //             'Favorites',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //           onTap: () {
      //             Navigator.pop(context);
      //             _onItemTapped(
      //                 2); // Navigate to favorites (adjust logic as needed)
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      drawer: CustomDrawer(
        onItemSelected: _onItemTapped,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.shade400,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
