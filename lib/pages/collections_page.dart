import 'package:flutter/material.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  void navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  void navigateToCollection(BuildContext context) {
    Navigator.pushNamed(context, '/collection');
  }

  void navigateToSale(BuildContext context) {
    Navigator.pushNamed(context, '/sale');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HEADER (same style as other pages)
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    color: const Color(0xFF4d2963),
                    child: const Text(
                      'PLACEHOLDER HEADER TEXT - STUDENTS TO UPDATE!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => navigateToHome(context),
                          child: const Text(
                            'The UNION',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.search, size: 18, color: Colors.grey),
                            SizedBox(width: 8),
                            Icon(Icons.person_outline,
                                size: 18, color: Colors.grey),
                            SizedBox(width: 8),
                            Icon(Icons.shopping_bag_outlined,
                                size: 18, color: Colors.grey),
                            SizedBox(width: 8),
                            Icon(Icons.menu, size: 18, color: Colors.grey),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'Collections',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  CollectionTile(
                    title: 'Portsmouth Merchandise',
                    description: 'Hoodies, T-shirts and accessories',
                    onTap: () => navigateToCollection(context),
                  ),
                  const SizedBox(height: 12),
                  CollectionTile(
                    title: 'Gifts & Souvenirs',
                    description: 'Mugs, magnets and small gifts',
                    onTap: () => navigateToCollection(context),
                  ),
                  const SizedBox(height: 12),
                  CollectionTile(
                    title: 'The Print Shack',
                    description: 'Custom printing and personalisation',
                    onTap: () => navigateToCollection(context),
                  ),
                  const SizedBox(height: 12),
                  CollectionTile(
                    title: 'Sale',
                    description: 'Discounted Union Shop products',
                    onTap: () => navigateToSale(context),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // FOOTER
            Container(
              width: double.infinity,
              color: Colors.grey[50],
              padding: const EdgeInsets.all(24),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Placeholder Footer',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Students should customise this footer section',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CollectionTile extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onTap;

  const CollectionTile({
    super.key,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
