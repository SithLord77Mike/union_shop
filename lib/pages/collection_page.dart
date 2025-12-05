import 'package:flutter/material.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  void navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HEADER
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
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'Portsmouth Merchandise Collection',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // Sort/filter controls (dummy, not functional yet)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Text('Sort by:'),
                  const SizedBox(width: 8),
                  DropdownButton<String>(
                    value: 'featured',
                    items: const [
                      DropdownMenuItem(
                        value: 'featured',
                        child: Text('Featured'),
                      ),
                      DropdownMenuItem(
                        value: 'price_low',
                        child: Text('Price: Low to High'),
                      ),
                      DropdownMenuItem(
                        value: 'price_high',
                        child: Text('Price: High to Low'),
                      ),
                    ],
                    onChanged: (_) {},
                  ),
                  const Spacer(),
                  FilterChip(
                    label: const Text('In stock'),
                    selected: true,
                    onSelected: (_) {},
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 3 / 4,
                children: const [
                  _CollectionProductCard(
                    title: 'Portsmouth Hoodie',
                    price: '£30.00',
                  ),
                  _CollectionProductCard(
                    title: 'Portsmouth T-Shirt',
                    price: '£18.00',
                  ),
                  _CollectionProductCard(
                    title: 'Portsmouth Mug',
                    price: '£8.00',
                  ),
                  _CollectionProductCard(
                    title: 'Portsmouth Tote Bag',
                    price: '£12.00',
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

class _CollectionProductCard extends StatelessWidget {
  final String title;
  final String price;

  const _CollectionProductCard({
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[300],
              child: const Center(
                child: Icon(Icons.image, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 4),
          Text(
            price,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
