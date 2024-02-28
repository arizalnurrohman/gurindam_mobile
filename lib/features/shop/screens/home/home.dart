// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gurindam/common/widgets/layouts/grid_layout.dart';
import 'package:gurindam/common/widgets/products/product_cards/product_card_vertical.dart';
// import 'package:gurindam/common/widgets/custom_shapes/containers/circular_container.dart';
// import 'package:gurindam/common/widgets/images/t_rounded_image.dart';
// import 'package:get/get.dart';
import 'package:gurindam/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:gurindam/features/shop/screens/home/widgets/home_categories.dart';
import 'package:gurindam/features/shop/screens/home/widgets/home_slider.dart';
import 'package:gurindam/utils/constants/image_strings.dart';
// import 'package:gurindam/utils/constants/colors.dart';
// import 'package:gurindam/utils/constants/image_strings.dart';
// import 'package:gurindam/utils/constants/colors.dart';
// import 'package:gurindam/utils/constants/image_strings.dart';
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
// import '../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
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
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///-- Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///-- seach box
                  TSearchContainer(text: 'Cari Materi Pembelajaran Guys'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///-- categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///-- heading
                        TSelectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        ///-- Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- promo slider
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// --popular product
                  TGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const TProductCardVertical())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
