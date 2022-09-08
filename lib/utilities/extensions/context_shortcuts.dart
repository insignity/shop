import 'package:flutter/material.dart';
import 'package:shop/l10n/l10n.dart';

extension Shortcuts on BuildContext{
  AppLocalizations get $ => AppLocalizations.of(this);
  TextTheme get txt => Theme.of(this).textTheme;
}
