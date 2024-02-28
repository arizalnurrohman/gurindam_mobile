import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:gurindam/features/shop/screens/home/widgets/home_appbar.dart';
// import 'package:gurindam/utils/constants/colors.dart';
import 'package:gurindam/utils/constants/image_strings.dart';
// import 'package:gurindam/utils/helpers/helper_functions.dart';
// import 'package:gurindam/utils/constants/colors.dart';
// import 'package:gurindam/utils/devices/device_utility.dart';
// import 'package:gurindam/utils/helpers/helper_functions.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:gurindam/features/shop/screens/home/widgets/home_appbar.dart';
//import 'package:gurindam/utils/constants/colors.dart';

//import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';

//import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
//import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges.dart';
//import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///-- Appbar
                  const THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///-- seach box
                  const TSearchContainer(text: 'Cari Materi Pembelajaran'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///-- categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///-- heading
                        const TSelectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        ///-- Categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return TVerticalImageText(
                                image: TImages.animalIcon,
                                title: 'Shoes',
                                onTap: () {},
                              );
                            },
                          ),
                        ),
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
