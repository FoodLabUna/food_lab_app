import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_lab/app/modules/historico_pesquisa/historico_pesquisa_page.dart';
import 'package:mobx/mobx.dart';
import 'package:food_lab/app/modules/base_screen/base_screen_controller.dart';
import 'package:food_lab/app/modules/home/home_page.dart';
import 'package:food_lab/app/widgets/base_app_bar.dart';
import 'package:food_lab/app/widgets/menu.dart';

class BaseScreenPage extends StatefulWidget {
  @override
  _BaseScreenPageState createState() => _BaseScreenPageState();
}

class _BaseScreenPageState extends State<BaseScreenPage> {
  final controller = BaseScreenController();

  @override
  void initState() {
    autorun((r) {
      controller.setLabel('Home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _BaseAppBar(child: Observer(builder: (_) {
        return BaseAppBar(
          title: controller.label,
        );
      })),
      body: PageView(
        controller: controller.pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [HomePage(), HistoricoPesquisaPage()],
      ),
      bottomNavigationBar: Observer(builder: (_) {
        return Menu(
          selectedIndex: controller.selectedIndex,
          onSelectTab: controller.onSelectTab,
        );
      }),
    );
  }
}

class _BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? child;

  _BaseAppBar({
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return child!;
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
