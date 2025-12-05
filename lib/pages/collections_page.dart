import 'package:flutter/material.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  void _navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  void _navigateToCollection(BuildContext context, String title) {
    Navigator.pushNamed(
      context,
      '/collection',
      arguments: title, // just pass a String
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ===== HEADER =====
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  // top banner
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    color: const Color(0xFF4d2963),
                    child: const Text(
                      'UNION SHOP – OFFICIAL UPSU MERCHANDISE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  // main header row
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => _navigateToHome(context),
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
                          children: [
                            IconButton(
                              icon: const Icon(Icons.search,
                                  size: 18, color: Colors.grey),
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        'Search coming soon (coursework demo).'),
                                  ),
                                );
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.person_outline,
                                  size: 18, color: Colors.grey),
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.shopping_bag_outlined,
                                  size: 18, color: Colors.grey),
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        'Cart coming soon – demo button for coursework.'),
                                  ),
                                );
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.menu,
                                  size: 18, color: Colors.grey),
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        'Mobile menu coming soon (coursework demo).'),
                                  ),
                                );
                              },
                            ),
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
                    onTap: () => _navigateToCollection(
                      context,
                      'Portsmouth Merchandise Collection',
                    ),
                  ),
                  const SizedBox(height: 12),
                  CollectionTile(
                    title: 'Gifts & Souvenirs',
                    description: 'Mugs, magnets and small gifts',
                    onTap: () => _navigateToCollection(
                      context,
                      'Gifts & Souvenirs Collection',
                    ),
                  ),
                  const SizedBox(height: 12),
                  CollectionTile(
                    title: 'The Print Shack',
                    description: 'Custom printing and personalisation',
                    onTap: () => _navigateToCollection(
                      context,
                      'The Print Shack Collection',
                    ),
                  ),
                  const SizedBox(height: 12),
                  CollectionTile(
                    title: 'Sale',
                    description: 'Discounted Union Shop products',
                    onTap: () => _navigateToCollection(
                      context,
                      'Sale Collection',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // ===== FOOTER =====
            Container(
              width: double.infinity,
              color: Colors.grey[50],
              padding: const EdgeInsets.all(24),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Union Shop Footer',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Official University of Portsmouth Students’ Union shop.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
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
