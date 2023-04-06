class MenuModel {
    MenuModel({
        required this.name,
        required this.description,
        required this.subMenu,
    });

    final String name;
    final String description;
    final List<SubMenu> subMenu;

    factory MenuModel.fromJson(Map<String, dynamic> json) => MenuModel(
        name: json["name"],
        description: json["description"],
        subMenu: List<SubMenu>.from(json["sub_menu"].map((x) => SubMenu.fromJson(x))),
    );
}

class SubMenu {
    SubMenu({
        required this.name,
        required this.permission,
    });

    final String name;
    final String permission;

    factory SubMenu.fromJson(Map<String, dynamic> json) => SubMenu(
        name: json["name"],
        permission: json["permission"],
    );

}