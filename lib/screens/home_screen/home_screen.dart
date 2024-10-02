import 'package:flutter/material.dart';
import 'package:social_swirl_app/widgets/custom_text.dart';

import '../../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social Swirl - Home'),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                  text: 'Welcome to Social Swirl',
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              const SizedBox(height: 20),
              Image.asset('assets/images/social_swirl.png'),
              const SizedBox(height: 20),
              const Text(
                'We provide social media services to help your brand grow.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/services');
                },
                child: const Text('Our Services'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: const Text('About Us'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
                child: const Text('Contact Us'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
