import 'package:flutter/material.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  Navbar({required this.selectedIndex, required this.onTabSelected});

  @override
  Size get preferredSize => const Size.fromHeight(120);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          toolbarHeight: 80,
          title: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 14,
                backgroundImage: AssetImage('images/stock.png'),
              ),
              const SizedBox(width: 4),
              const Text(
                'STOCK NEX',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 1, color: Colors.white),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'AJOUT PRODUITS',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
              const SizedBox(width: 4),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 1, color: Colors.white),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'AJOUT FOURNISSEUR',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          height: 40,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: _buildTabItem(0, 'Dashboard'),
              ),
              const SizedBox(width: 16),
              _buildTabItem(1, 'Inventaire'),
              const SizedBox(width: 16),
              _buildTabItem(2, 'Transaction'),
              const SizedBox(width: 16),
              _buildTabItem(3, 'États'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTabItem(int index, String label) {
    return GestureDetector(
      onTap: () => onTabSelected(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: selectedIndex == index ? Colors.black : Colors.grey[600],
            ),
          ),
          if (selectedIndex == index)
            Container(
              margin: const EdgeInsets.only(top: 2),
              height: 2,
              width: 40,
              color: Colors.black,
            ),
        ],
      ),
    );
  }
}
