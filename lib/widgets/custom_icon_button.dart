import 'package:flutter/material.dart';
import 'package:trast/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  borderRadius: BorderRadius.circular(15.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue500,
        borderRadius: BorderRadius.circular(19.h),
      );
  static BoxDecoration get gradientYellowToPrimary => BoxDecoration(
        borderRadius: BorderRadius.circular(30.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray60033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.42, 0),
          end: Alignment(0.54, 1),
          colors: [
            appTheme.yellow90001,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green50,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray30002,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillGrayTL10 => BoxDecoration(
        color: appTheme.gray30001,
        borderRadius: BorderRadius.circular(10.h),
      );
}
