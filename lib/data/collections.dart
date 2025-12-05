class CollectionInfo {
  final String slug;
  final String title;
  final String subtitle;

  CollectionInfo({
    required this.slug,
    required this.title,
    required this.subtitle,
  });
}

final List<CollectionInfo> collections = [
  CollectionInfo(
    slug: "portsmouth-merch",
    title: "Portsmouth Merchandise",
    subtitle: "Hoodies, T-shirts and accessories",
  ),
  CollectionInfo(
    slug: "gifts",
    title: "Gifts & Souvenirs",
    subtitle: "Mugs, magnets and small gifts",
  ),
  CollectionInfo(
    slug: "print-shack",
    title: "The Print Shack",
    subtitle: "Custom printing and personalisation",
  ),
  CollectionInfo(
    slug: "sale",
    title: "Sale",
    subtitle: "Discounted Union Shop products",
  ),
];
