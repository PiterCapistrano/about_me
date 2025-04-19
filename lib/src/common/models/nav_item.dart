import 'package:flutter/material.dart';

class NavItem {
  final String title;
  final Icon? icon;
  final VoidCallback? onTap;

  const NavItem({
    required this.title,
    this.icon,
    this.onTap,
  });

  NavItem.empty({
    this.title = "",
    this.icon,
    this.onTap,
  });
}
