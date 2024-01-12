import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeDMSans => theme.textTheme.bodyLarge!.dMSans.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeInter => theme.textTheme.bodyLarge!.inter.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeInterGray10001 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray10001,
        fontWeight: FontWeight.w100,
      );
  static get bodyLargeInterRedA200 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.redA200,
        fontSize: 16.fSize,
      );
  static get bodyLargeInterfffe554a =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: Color(0XFFFE554A),
        fontSize: 16.fSize,
      );
  static get bodySmallInterfffe554a =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: Color(0XFFFE554A),
        fontSize: 14.fSize,
      );
  static get bodyLargeOpenSansOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyLargeOpenSansOnPrimaryContainer16 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyLargeThin => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w100,
      );
  static get bodyMediumDMSansRedA200 =>
      theme.textTheme.bodyMedium!.dMSans.copyWith(
        color: appTheme.redA200,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumInterGray500 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumInterGray80001 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumInterOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMediumInterRedA200 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.redA200,
      );
  static get bodyMediumOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumRedA200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.redA200,
      );
  static get bodySmallDMSansErrorContainer =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get bodySmallDMSansGray80001 =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: appTheme.gray80001,
        fontSize: 10.fSize,
      );
  static get bodySmallDMSansGray80001_1 =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: appTheme.gray80001,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmallGray80001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodySmallGray8000111 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray80001,
        fontSize: 11.fSize,
      );
  static get bodySmallInterBluegray400 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallInterGray500 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallInterGray80001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray80001,
      );
  static get bodySmallOpenSansOnPrimaryContainer =>
      theme.textTheme.bodySmall!.openSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineSmallErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get headlineSmallOnSecondaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  // Roboto text style
  static get robotoOnPrimaryContainer => TextStyle(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).roboto;
  // Title text style
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterErrorContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterRedA200 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w700,
      );

  static get titleSmallInterRedA200 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterfffe554a =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: Color(0XFFFE554A),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumRedA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA200,
      );
  static get titleMediumRobotoOnPrimaryContainer =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRobotoPrimaryContainer =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRobotoRedA200 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInterErrorContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterGray800 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
