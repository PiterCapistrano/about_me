import 'package:about_me/src/common/constants/app_colors.dart';
import 'package:about_me/src/common/models/nav_item.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget implements PreferredSizeWidget {
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final List<NavItem> children;

  const Menu({
    super.key,
    this.selectedItemColor = AppColors.titleColor,
    this.unselectedItemColor = AppColors.textColor,
    required this.children,
  });

  @override
  State<Menu> createState() => _MenuState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MenuState extends State<Menu> {
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backGroudColor2,
      // altura padrão do AppBar
      toolbarHeight: kToolbarHeight,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.children.asMap().entries.map((entry) {
          final index = entry.key;
          final item = entry.value;
          final isSelected = index == _selectedItemIndex;
          final color = isSelected
              ? widget.selectedItemColor
              : widget.unselectedItemColor;

          return Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedItemIndex = index;
                });
                item.onTap!();
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(item.icon as IconData?, color: color),
                  const SizedBox(height: 4),
                  Text(
                    item.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: color,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
    );
  }
}
