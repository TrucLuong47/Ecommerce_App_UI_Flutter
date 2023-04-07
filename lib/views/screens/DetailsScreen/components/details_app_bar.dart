import 'package:ecommerce_app_flutter/views/widgets/rounded_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsAppBar extends StatelessWidget implements PreferredSize {
  final String rate;
  const DetailsAppBar({super.key, required this.rate});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RoundedIconBtn(
              icon: Icons.keyboard_arrow_left,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Container(
              height: 35,
              width: 65,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    rate,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset("assets/icons/Star Icon.svg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 150);

  @override
  Widget get child => throw UnimplementedError();
}
