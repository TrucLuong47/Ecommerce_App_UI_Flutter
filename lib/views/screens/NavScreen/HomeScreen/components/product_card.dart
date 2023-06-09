import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/favorite_provider.dart';
import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:ecommerce_app_flutter/views/screens/DetailsScreen/details_screen.dart';
import 'package:ecommerce_app_flutter/views/widgets/custom_snack_bar.dart';
import 'package:ecommerce_app_flutter/views/widgets/like_button.dart';
import 'package:ecommerce_app_flutter/views/widgets/product_rating.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(
          getProportinateScreenWidth(5),
        ),
        child: GridView.count(
          childAspectRatio: 0.75,
          mainAxisSpacing: getProportinateScreenWidth(5),
          crossAxisSpacing: getProportinateScreenWidth(5),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          children: <Widget>[
            ...List.generate(
              demoProducts.length,
              (index) => SingleProductCard(
                product: demoProducts[index],
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments: DetailsArgument(
                      product: demoProducts[index],
                    ),
                  );
                },
                child: favoriteProvider.isExist(index)
                    ? LikeButton(
                        onTap: () {
                          favoriteProvider.toggleFavorite(index);
                          showSnackBar(
                            context,
                            "Successfully removed from your favorite",
                            Icons.remove_rounded,
                            Colors.red,
                          );
                        },
                        bgColor: Colors.redAccent.withOpacity(0.1),
                        iconColor: Colors.redAccent,
                      )
                    : LikeButton(
                        onTap: () {
                          favoriteProvider.toggleFavorite(index);
                          showSnackBar(
                            context,
                            "Successfully added to your favorite",
                            Icons.check_rounded,
                            Colors.green,
                          );
                        },
                        bgColor: AppColor.kSecondaryColor.withOpacity(0.1),
                        iconColor: Colors.black.withOpacity(0.3),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleProductCard extends StatelessWidget {
  final Product product;
  final void Function() onTap;
  final Widget child;

  const SingleProductCard({
    super.key,
    required this.product,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: SizedBox(
        width: getProportinateScreenWidth(60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 1.05,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: AppColor.kSecondaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(product.images[0]),
                    ),
                  ),
                  Positioned(
                    top: 7,
                    left: 7,
                    child: ProductRating(
                      rate: product.rating.toString(),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: getProportinateScreenWidth(20),
                  child: Text(
                    product.title,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportinateScreenWidth(7)),
                    maxLines: 2,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '\$${product.price}',
                    style: priceStyle,
                  ),
                  child,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
