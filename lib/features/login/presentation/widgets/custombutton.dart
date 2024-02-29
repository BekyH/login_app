
import 'package:flutter/material.dart';
import 'package:simple_login/themes/color.dart';
import 'package:simple_login/themes/text.dart';

class ButtonAction extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? analyticName;
  final String label;
  final Color? textColor;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final double borderRadius;
  final bool infiniteWidth;
  final double? height;
  final Color? outlineColor;
  final double? fontSize;
  final Widget? icon;
  final double? width;

  const ButtonAction(this.label,
      {Key? key,
      this.analyticName,
      this.textColor = ThemeColors.whiteNormal,
      this.backgroundColor = ThemeColors.green,
      required this.onPressed,
      this.infiniteWidth = true,
      this.textStyle = BoldText.body1,
      this.borderRadius = 4,
      this.height = 46,
      this.fontSize,
      this.icon,
      this.width,
      this.outlineColor = Colors.transparent})
      : super(key: key);

  const ButtonAction.compact(this.label,
      {Key? key,
      this.analyticName,
      this.fontSize,
      this.textColor = ThemeColors.whiteNormal,
      this.backgroundColor = ThemeColors.green,
      required this.onPressed,
      this.textStyle = BoldText.body1,
      this.borderRadius = 4,
      this.infiniteWidth = false,
      this.height,
      this.icon,
      this.width,
      this.outlineColor = Colors.transparent})
      : super(key: key);

  const ButtonAction.outline(this.label,
      {Key? key,
      this.analyticName,
      this.fontSize,
      this.textColor = ThemeColors.whiteNormal,
      this.backgroundColor = ThemeColors.green,
      required this.onPressed,
      this.textStyle = BoldText.body1,
      this.borderRadius = 4,
      this.infiniteWidth = false,
      this.height,
      this.icon,
      this.width,
      this.outlineColor = Colors.transparent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: infiniteWidth ? double.infinity : width,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                side: BorderSide(color: outlineColor!)),
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                // return GOKColors.neutral.shade500;
                return ThemeColors.whiteNormal;
              }
              return textColor!;
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                // return GOKColors.neutral.shade200;
                return ThemeColors.greyShadow;
              }
              return backgroundColor!;
            },
          ),
        ),
        onPressed: onPressed,
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) icon!,
                  if (icon != null && label != '')
                    const SizedBox(width: 10,),
                  Text(
                    label,
                    textAlign: TextAlign.center,
                    style: textStyle?.copyWith(fontSize: fontSize),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              )
            : Text(
                label,
                textAlign: TextAlign.center,
                style: textStyle?.copyWith(fontSize: fontSize),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
      ),
    );
  }
}
