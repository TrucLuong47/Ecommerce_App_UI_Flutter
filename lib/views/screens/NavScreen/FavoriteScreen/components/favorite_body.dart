import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/favorite_provider.dart';
import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/details_screen.dart';
import 'package:ecommerce_app_flutter/views/screens/NavScreen/HomeScreen/components/product_card.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteBody extends StatelessWidget {
  const FavoriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    return favoriteProvider.favoriteItem.isEmpty
        ? SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Nothing in here :(('),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 156, 121),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Search now!',
                    style: TextStyle(
                      color: AppColor.kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
          )
        : Padding(
            padding: EdgeInsets.all(
              getProportinateScreenWidth(5),
            ),
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: GridView.count(
                  childAspectRatio: 0.75,
                  mainAxisSpacing: getProportinateScreenWidth(5),
                  crossAxisSpacing: getProportinateScreenWidth(5),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  children: <Widget>[
                    ...List.generate(
                      favoriteProvider.favoriteItem.length,
                      (index) => SingleProductCard(
                        product:
                            demoProducts[favoriteProvider.favoriteItem[index]],
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            DetailsScreen.routeName,
                            arguments: DetailsArgument(
                              product: demoProducts[
                                  favoriteProvider.favoriteItem[index]],
                            ),
                          );
                        },
                        child: InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            favoriteProvider.removeFromFavorite(
                                favoriteProvider.favoriteItem[index]);
                            showSnackBar(
                              context,
                              "Successfully removed from your favorite",
                              Icons.remove_rounded,
                              Colors.red,
                            );
                          },
                          child: const Icon(
                            Icons.delete_rounded,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
