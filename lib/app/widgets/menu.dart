import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class Menu extends StatelessWidget {
  final Function(int)? onSelectTab;
  final int? selectedIndex;

  const Menu({
    this.onSelectTab,
    this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    //return Container();
    return ConvexAppBar(
      color: Color(0xFFf28705),
      backgroundColor: Colors.white,
      activeColor: Color(0xFFf28705),
      elevation: 10,
      items: [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.history, title: 'Histórico Pesquisa'),
      ],
      initialActiveIndex: this.selectedIndex, //optional, default as 0
      onTap: onSelectTab ?? (value) {},
    );
  }
}
