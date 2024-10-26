import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 40,
                child: Text('Logo'),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.24,
              ),
              // const Spacer(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      child: const Text('Preformatted Questions'),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      child: const Text('Preformatted Questions'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outlined,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text('You', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.chat_outlined,
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text('Chat', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'How can we help you today?',
                    suffixIcon: const Icon(Icons.arrow_upward_rounded),
                    suffixIconColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
