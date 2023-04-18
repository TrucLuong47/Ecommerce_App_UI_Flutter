import 'package:ecommerce_app_flutter/constant/app_color.dart';
import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:ecommerce_app_flutter/models/product.dart';
import 'package:flutter/material.dart';

class Preview extends StatefulWidget {
  final Product product;
  const Preview({super.key, required this.product});

  @override
  State<Preview> createState() => _PreviewState();
}

class _PreviewState extends State<Preview> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 2,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: demoProducts.length,
              itemBuilder: (context, index) => LargePreview(
                image: widget.product.images[index],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportinateScreenWidth(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ...List.generate(
                demoProducts.length,
                (index) => SmallPreview(
                  image: widget.product.images[index],
                  onTap: () {
                    _pageController.animateToPage(
                      index,
                      curve: Curves.easeIn,
                      duration: const Duration(milliseconds: 200),
                    );
                    setState(() {
                      currentPage = index;
                    });
                  },
                  index: index,
                  currentPage: currentPage,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class LargePreview extends StatelessWidget {
  final String image;
  const LargePreview({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Image.asset(
        image,
      ),
    );
  }
}

class SmallPreview extends StatelessWidget {
  final String image;
  final void Function() onTap;
  final int index, currentPage;
  const SmallPreview({
    super.key,
    required this.image,
    required this.onTap,
    required this.index,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15),
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: index == currentPage
                  ? AppColor.kPrimaryColor
                  : Colors.transparent),
          borderRadius: BorderRadius.circular(15),
        ),
        width: getProportinateScreenWidth(28),
        child: AspectRatio(
          aspectRatio: 1,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
