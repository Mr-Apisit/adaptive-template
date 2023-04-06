import 'package:flutter/material.dart';

import '../../constants/_string.dart';

import '../layouts/footer.dart';
import '../layouts/header.dart';
import '../layouts/sub_header.dart';
import '../layouts/layout.dart';

import '../widgets/vertical_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Container(
                    padding: const EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: const [
                        Icon(Icons.radar_outlined),
                        SizedBox(width: 5),
                        Text(StringConstants.appName),
                      ],
                    )),
                trailing: const Icon(Icons.arrow_back_ios),
                onTap: () => Navigator.pop(context),
              ),
              for (var i = 0; i < 4; i++)
                ListTile(
                  title: Text("Sub menu $i"),
                )
            ],
          ),
        ),
      ),
      body: AdaptiveLayout(
        tiny: const Center(
          child: Icon(Icons.not_interested),
        ),
        phone: const CustomScrollView(
          slivers: [
            HeaderLayout(),
            SubHeader(fullscreen: false),
            VerticalListWidget(),
            FooterLayout(),
          ],
        ),
        tablet: const CustomScrollView(
          slivers: [
            HeaderLayout(),
            SubHeader(fullscreen: false),
            VerticalListWidget(),
            FooterLayout(),
          ],
        ),
        largeTablet: CustomScrollView(
          slivers: [
            const HeaderLayout(),
            const SubHeader(fullscreen: true),
            SliverFillRemaining(
              child: Row(
                children: const [Expanded(flex: 1, child: Placeholder()), Expanded(flex: 4, child: Placeholder())],
              ),
            ),
            const FooterLayout(),
          ],
        ),
        computer: CustomScrollView(
          slivers: [
            const HeaderLayout(),
            const SubHeader(fullscreen: true),
            SliverFillRemaining(
              child: Row(
                children: const [Expanded(flex: 1, child: Placeholder()), Expanded(flex: 4, child: Placeholder())],
              ),
            ),
            const FooterLayout(),
          ],
        ),
      ),
    );
  }
}
