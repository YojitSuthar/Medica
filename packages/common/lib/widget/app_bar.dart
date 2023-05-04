import 'package:common/common.dart';
import 'package:flutter/material.dart';

class WidgetAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WidgetAppBar({super.key, required this.title,  this.actions});

  final String title;
  final List<Widget> ?actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const BackIconButton(),
      automaticallyImplyLeading: false,
      elevation: 0,
      titleSpacing: 5,
      title: DesignText(
        text: title,
        padding: 0,
        style: Theme.of(context).textTheme.titleLarge!,
      ),
      actions: actions,
    );
  }
}