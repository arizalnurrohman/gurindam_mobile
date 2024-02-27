import 'package:flutter/material.dart';
import 'package:gurindam/features/shop/screens/home/widgets/home_appbar.dart';
// import 'package:gurindam/utils/constants/colors.dart';
// import 'package:gurindam/utils/devices/device_utility.dart';
// import 'package:gurindam/utils/helpers/helper_functions.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:gurindam/features/shop/screens/home/widgets/home_appbar.dart';
//import 'package:gurindam/utils/constants/colors.dart';

//import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';

//import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
//import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges.dart';
//import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSearchContainer(text: 'Cari Materi Pembelajaran'),
                  SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSelectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
