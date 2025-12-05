import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About The Union Shop'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'About The Union Shop',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'The Union Shop is the official store of the University of Portsmouth Students’ Union. '
              'It offers university merchandise, clothing, gifts and essentials for students and staff.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            SizedBox(height: 16),
            Text(
              'This page is a static information page created for the coursework. '
              'Its purpose is to demonstrate a dedicated About Us page separate from the homepage.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            SizedBox(height: 24),
            Text(
              'Opening Hours',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Monday – Friday: 9:00 – 17:00\n'
              'Saturday – Sunday: Closed',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            SizedBox(height: 24),
            Text(
              'Contact',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Email: shop@upsu.net\n'
              'Address: Students’ Union Building, Cambridge Road, Portsmouth',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
