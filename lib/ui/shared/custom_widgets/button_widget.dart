import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_order/ui/shared/utils.dart';
import '../colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.text,
    this.textColor,
    this.textSize,
    this.textFontWeight,
    this.borderColor,
    this.buttonColor,
    this.svgName,
    required this.onPressed,

  }) : super(key: key);

  final String text;
  final Color? textColor;
  final double? textSize;
  final FontWeight? textFontWeight;
  final Color? borderColor;
  final Color? buttonColor;
  final String? svgName;
  final Function onPressed;




  @override
  Widget build(BuildContext context) {

    return ElevatedButton(

      onPressed: (){onPressed();},

      style: ElevatedButton.styleFrom(
          side: borderColor != null
              ? BorderSide(
              width: 1, color: borderColor ?? AppColors.mainOrangeColor)
              : null,
          backgroundColor: buttonColor ?? AppColors.mainOrangeColor,
          shape: StadiumBorder(),
          fixedSize: Size(screenWidth(1.1), screenWidth(6.5))),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (svgName != null) ...[
            SvgPicture.asset('images/$svgName.svg'),
            SizedBox(
              width: screenWidth(30),
            )
          ],
          Text(
            text,
            style: TextStyle(
                color: textColor ?? AppColors.mainWhiteColor,
                fontSize: textSize ?? screenWidth(25),
                fontWeight: textFontWeight ?? FontWeight.normal),
          ),
        ],
      ),
    );
  }
}

