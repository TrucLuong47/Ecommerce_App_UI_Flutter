import 'package:ecommerce_app_flutter/constant/size_config.dart';
import 'package:flutter/material.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: <Widget>[
          SingleCard(
            bannerName: 'Smartphone \n',
            image: 'assets/images/Image Banner 2.png',
            numOfBrand: 14,
            press: () {},
          ),
          SingleCard(
            bannerName: 'Fashion \n',
            image: 'assets/images/Image Banner 3.png',
            numOfBrand: 37,
            press: () {},
          ),
          SizedBox(
            width: getProportinateScreenWidth(5),
          ),
        ],
      ),
    );
  }
}

class SingleCard extends StatelessWidget {
  final String bannerName, image;
  final int numOfBrand;
  final void Function() press;
  const SingleCard({
    super.key,
    required this.bannerName,
    required this.image,
    required this.numOfBrand,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportinateScreenWidth(5),
      ),
      child: InkWell(
        onTap: press,
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          height: SizeConfig.screenHeight! * 0.12,
          width: SizeConfig.screenWidth! * 0.6,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
                        const Color.fromARGB(255, 198, 198, 198)
                            .withOpacity(0.3),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text.rich(
                    TextSpan(
                      text: bannerName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportinateScreenWidth(10),
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: '$numOfBrand brands',
                          style: TextStyle(
                            fontSize: getProportinateScreenWidth(7),
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
