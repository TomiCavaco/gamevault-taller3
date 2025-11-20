import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/games_grid.dart';
import '../widgets/categories_list.dart';




class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      title: const Text('GameVault'),
      actions: const [
        Icon(Icons.search),
        SizedBox(width: 12),
        Icon(Icons.more_vert),
        SizedBox(width: 12),
      ],
      bottom: const TabBar(
        tabs: [
          Tab(icon: Icon(Icons.videogame_asset), text: 'Juegos'),
          Tab(icon: Icon(Icons.star), text: 'Favoritos'),
          Tab(icon: Icon(Icons.category), text: 'Categorías'),
        ],
      ),
    ),

    drawer: const AppDrawer(),

   body: const TabBarView(
  children: [
  const GamesGrid(),
  const Center(child: Text('Aquí irán los favoritos')),
  const CategoriesList(),  // aquí!
],

),

    // 👉 FAB añadido aquí
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        print('Añadir nuevo juego');
      },
      child: const Icon(Icons.add),
    ),
  ),
);

  }
}

