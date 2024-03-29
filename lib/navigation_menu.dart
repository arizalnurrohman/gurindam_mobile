import 'package:flutter/material.dart';
import 'package:gurindam/features/shop/screens/home/home.dart';
import 'package:gurindam/features/shop/screens/store/store.dart';
import 'package:gurindam/utils/constants/colors.dart';
import 'package:gurindam/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Iconsax.firstline), label: 'Materi'),
            NavigationDestination(
                icon: Icon(Iconsax.heart), label: 'Notifikasi'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screen = [
    const HomeScreen(),
    //Container(color: Colors.green),
    const StoreScreen(),
    //Container(color: Colors.purple),
    Container(color: Colors.orange),
    Container(color: Colors.red),
  ];
}
