import 'package:flutter/material.dart';
import 'package:slicing_laundry/controllers/main_navigation_controller.dart';
import 'package:slicing_laundry/injection.dart';

import 'home_view.dart';

class MainNavigationView extends StatelessWidget {
  const MainNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    final MainNavigationController controller =
        locator<MainNavigationController>();

    List<Widget> views = <Widget>[
      const HomeView(),
      const Center(
        child: Text("Location"),
      ),
      const Center(
        child: Text("Add"),
      ),
      const Center(
        child: Text("Favorite"),
      ),
      const Center(
        child: Text("Settings"),
      ),
    ];

    Widget _navBarItems() {
      return SizedBox(
        height: 75.0,
        child: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: ValueListenableBuilder<int>(
              valueListenable: controller.selectedIndex,
              builder: (_, v, __) {
                return BottomNavigationBar(
                  currentIndex: v,
                  backgroundColor: Colors.white,
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.blue,
                  unselectedItemColor: Colors.grey,
                  selectedIconTheme: const IconThemeData(
                      // color: Colors.red,
                      ),
                  onTap: (value) {
                    controller.changeSelectedIndex(value);
                  },
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: [
                    BottomNavigationBarItem(
                      icon: const Icon(Icons.home),
                      activeIcon: Container(
                        height: 45.0,
                        width: 45.0,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: const Icon(Icons.location_pin),
                      activeIcon: Container(
                        height: 45.0,
                        width: 45.0,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.location_pin,
                          color: Colors.white,
                        ),
                      ),
                      label: "Location",
                    ),
                    BottomNavigationBarItem(
                      icon: const Icon(Icons.add),
                      activeIcon: Container(
                        height: 45.0,
                        width: 45.0,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      label: "Add",
                    ),
                    BottomNavigationBarItem(
                      icon: const Icon(Icons.favorite),
                      activeIcon: Container(
                        height: 45.0,
                        width: 45.0,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                      label: "Favorite",
                    ),
                    BottomNavigationBarItem(
                      icon: const Icon(Icons.settings),
                      activeIcon: Container(
                        height: 45.0,
                        width: 45.0,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                      ),
                      label: "Settings",
                    ),
                  ],
                );
              }),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: _navBarItems(),
      body: ValueListenableBuilder(
        valueListenable: controller.selectedIndex,
        builder: (_, v, __) {
          return views.elementAt(v);
        },
      ),
    );
  }
}
