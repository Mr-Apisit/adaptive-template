import 'package:flutter/material.dart';
import '../../constants/_colors.dart';
import '../../constants/_string.dart';

class HeaderLayout extends StatelessWidget {
  const HeaderLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorsConstants.primary,
      pinned: false,
      title: const ListTile(
        leading: Icon(Icons.shield_rounded),
        title: Text(
          StringConstants.descriptions,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: PopupMenuButton<String>(
              elevation: 1,
              icon: const Icon(Icons.account_circle_rounded),
              padding: EdgeInsets.zero,
              onSelected: (value) {},
              itemBuilder: (context) {
                return <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: "PROFILE",
                    child: ListTile(
                      leading: Icon(Icons.account_circle_rounded),
                      title: Text(
                        "Profile info",
                      ),
                    ),
                  ),
                  const PopupMenuItem<String>(
                    value: "SETTING",
                    child: ListTile(
                      leading: Icon(Icons.settings),
                      title: Text(
                        "Setting",
                      ),
                    ),
                  ),
                  const PopupMenuDivider(),
                  const PopupMenuItem<String>(
                    value: "LOGOUT",
                    child: ListTile(
                      leading: Icon(Icons.power_settings_new_rounded),
                      title: Text(
                        "Logout",
                      ),
                    ),
                  ),
                ];
              }),
        ),
      ],
    );
  }
}
