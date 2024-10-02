import 'package:flutter/material.dart';
import 'package:social_swirl_app/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  String buttonText;
  void Function()? onTap;
  CustomButton({required this.buttonText, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: CustomText(
            text: buttonText,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
