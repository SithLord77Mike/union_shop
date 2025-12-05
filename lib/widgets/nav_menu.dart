import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  final BuildContext parentContext;

  const NavMenu({super.key, required this.parentContext});

  void _openMenu() {
    showModalBottomSheet(
      context: parentContext,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: const Text("Home"),
                onTap: () => Navigator.pushNamed(parentContext, "/"),
              ),
              ListTile(
                title: const Text("Collections"),
                onTap: () => Navigator.pushNamed(parentContext, "/collections"),
              ),
              ListTile(
                title: const Text("Sale"),
                onTap: () => Navigator.pushNamed(parentContext, "/sale"),
              ),
              ListTile(
                title: const Text("About"),
                onTap: () => Navigator.pushNamed(parentContext, "/about"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu, size: 18, color: Colors.grey),
      onPressed: _openMenu,
    );
  }
}
