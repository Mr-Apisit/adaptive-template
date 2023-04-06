import 'package:flutter/material.dart';

import '../../constants/_colors.dart';
import '../../constants/_string.dart';

class SubHeader extends StatefulWidget {
  const SubHeader({required this.fullscreen, super.key});
  final bool fullscreen;

  @override
  State<SubHeader> createState() => _SubHeaderState();
}

class _SubHeaderState extends State<SubHeader> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> menus = ["menu 1", "menu 2", "menu 3", "menu 4"];

  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: menus.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: !widget.fullscreen,
      elevation: 0,
      backgroundColor: ColorsConstants.white,
      pinned: true,
      actions: [
        widget.fullscreen
            ? Expanded(
                flex: 1,
                child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: const [
                        Icon(Icons.radar_outlined),
                        SizedBox(width: 5),
                        Text(StringConstants.appName),
                      ],
                    )),
              )
            : const SizedBox.shrink(),
        widget.fullscreen
            ? Expanded(
                flex: 2,
                child: TabBar(
                  indicatorColor: ColorsConstants.selected,
                  controller: _tabController,
                  labelColor: ColorsConstants.secondary,
                  isScrollable: false,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    for (final tab in menus) Tab(text: tab),
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: PopupMenuButton<String>(
                    elevation: 1,
                    icon: const Icon(Icons.navigate_before_outlined),
                    padding: EdgeInsets.zero,
                    onSelected: (value) {},
                    itemBuilder: (context) {
                      return <PopupMenuEntry<String>>[
                        for (final menu in menus)
                          PopupMenuItem<String>(
                            value: menu,
                            child: Text(
                              menu,
                            ),
                          ),
                      ];
                    }),
              ),
      ],
    );
  }
}
