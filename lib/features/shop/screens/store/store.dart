import 'package:flutter/material.dart';
import 'package:gurindam/common/widgets/images/t_circular_image.dart';
import 'package:gurindam/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
// import 'package:gurindam/common/widgets/images/t_circular_image.dart';
// import 'package:gurindam/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
// import 'package:gurindam/common/widgets/appbar/appbar.dart';
// import 'package:gurindam/common/widgets/product.chart/chat_menu_icon.dart';
import 'package:gurindam/core.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:
            Text('Materi', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.black
                  : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// --Search Bar
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSearchContainer(
                      text: 'Mau Cari materi Apa hari ini ??',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// --Featured Brands
                    const TSectionHeading(
                      title: 'Freature Brand',
                      showActionButton: true,
                      // /onPressed: () {},
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                    TGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: TRoundedContainer(
                            padding: const EdgeInsets.all(TSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                //icon
                                Flexible(
                                  child: TCircularImage(
                                    isNetworkImage: false,
                                    image: TImages.clothIcon,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                        THelperFunctions.isDarkMode(context)
                                            ? TColors.white
                                            : TColors.black,
                                  ),
                                ),
                                const SizedBox(width: TSizes.spaceBtwItems / 2),

                                ///text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const TBrandTitleWithVerifiedIcon(
                                          title: 'Nike',
                                          brandTextSize: TextSizes.large),
                                      Text(
                                        '256 Products',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
