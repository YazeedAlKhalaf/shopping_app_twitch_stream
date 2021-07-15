import 'package:flutter/material.dart';
import 'package:shopping_app/ui/widgets/dumb/custom_app_bar.dart';
import 'package:shopping_app/ui/widgets/dumb/shopping_icon_button.dart';
import 'package:shopping_app/ui/widgets/dumb/shopping_scroll_shelf.dart';
import 'package:stacked/stacked.dart';

import './home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (HomeViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
                top: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ShoppingIconButton(
                        icon: Icons.arrow_back_ios_new_rounded,
                        isLight: false,
                        onTap: () async {},
                      ),
                      ShoppingIconButton(
                        icon: Icons.search_rounded,
                        isLight: true,
                        onTap: () async {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Hi-Fi Shop & Service",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Audio shop on Rustaveli Ave. 57.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "This shop offers both products and services",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 350,
                            width: double.infinity,
                            child: ShoppingScrollShelf(
                              showAvailable: false,
                              title: "Products",
                              number: "41",
                            ),
                          ),
                          Container(
                            height: 350,
                            width: double.infinity,
                            child: ShoppingScrollShelf(
                              showAvailable: true,
                              title: "Accessories",
                              number: "19",
                            ),
                          ),
                          const SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
