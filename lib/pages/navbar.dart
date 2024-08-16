import 'package:flutter/material.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  Navbar({required this.selectedIndex, required this.onTabSelected});

  @override
  Size get preferredSize =>
      const Size.fromHeight(120); // Hauteur totale ajustée

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          automaticallyImplyLeading: false, // Supprime la flèche de retour
          backgroundColor: Colors.black,
          toolbarHeight: 80, // Hauteur réduite pour la partie noire
          title: Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white, // Couleur de fond de l'icône
                radius: 14,
                child: Icon(
                  Icons.person,
                  color: Colors.black, // Couleur de l'icône
                  size: 12, // Taille de l'icône
                ),
              ),
              const SizedBox(width: 4), // Réduction de l'espace avant "RAKY"
              const Text(
                'RAKY',
                style: TextStyle(
                  color: Colors.white, // Couleur du texte blanche
                  fontSize: 14, // Taille de la police réduite
                ),
              ),
              const Spacer(),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                      width: 1, color: Colors.white), // Bordure plus fine
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 4), // Espacement interne réduit
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Pas d'arrondis
                  ),
                ),
                onPressed: () {
                  // Action pour ajouter un produit
                },
                child: const Text(
                  'AJOUT PRODUITS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12), // Écriture plus petite
                ),
              ),
              const SizedBox(width: 4), // Espacement entre les boutons réduit
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                      width: 1, color: Colors.white), // Bordure plus fine
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 4), // Espacement interne réduit
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Pas d'arrondis
                  ),
                ),
                onPressed: () {
                  // Action pour ajouter un fournisseur
                },
                child: const Text(
                  'AJOUT FOURNISSEUR',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12), // Écriture plus petite
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white, // Fond blanc pour les onglets
          height: 40, // Hauteur des onglets ajustée
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 30), // Espacement avant le premier onglet
                child: _buildTabItem(0, 'Dashboard'),
              ),
              const SizedBox(width: 16), // Espacement entre les onglets
              _buildTabItem(1, 'Inventaire'),
              const SizedBox(width: 16), // Espacement entre les onglets
              _buildTabItem(2, 'Transaction'),
              const SizedBox(width: 16), // Espacement entre les onglets
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
              fontSize: 14, // Taille de la police réduite
              fontWeight: FontWeight.bold,
              color: selectedIndex == index ? Colors.black : Colors.grey[600],
            ),
          ),
          if (selectedIndex == index)
            Container(
              margin: const EdgeInsets.only(
                  top:
                      2), // Réduit l'espace au-dessus de la ligne de soulignement
              height: 2, // Hauteur de la ligne de soulignement réduite
              width: 40, // Largeur de la ligne de soulignement réduite
              color: Colors.black, // Soulignement noir pour l'onglet actif
            ),
        ],
      ),
    );
  }
}
